package repository

import (
	"fmt"
	"lifesync-backend/internal/models"
	"time"

	"gorm.io/gorm"
)

type FinanceRepository struct {
	db *gorm.DB
}

func NewFinanceRepository(db *gorm.DB) *FinanceRepository {
	return &FinanceRepository{db: db}
}

// Transaction methods
func (r *FinanceRepository) CreateTransaction(transaction *models.Transaction) error {
	return r.db.Create(transaction).Error
}

func (r *FinanceRepository) GetTransactionByID(id uint) (*models.Transaction, error) {
	var transaction models.Transaction
	err := r.db.Preload("Category").First(&transaction, id).Error
	return &transaction, err
}

func (r *FinanceRepository) GetAllTransactions(page, limit int, search, transactionType string, startDate, endDate string) ([]models.Transaction, int64, error) {
	var transactions []models.Transaction
	var total int64

	query := r.db.Model(&models.Transaction{}).Preload("Category")

	// Filters
	if search != "" {
		query = query.Where("description LIKE ? OR notes LIKE ?", "%"+search+"%", "%"+search+"%")
	}
	if transactionType != "" && transactionType != "all" {
		query = query.Where("type = ?", transactionType)
	}
	if startDate != "" {
		query = query.Where("date >= ?", startDate)
	}
	if endDate != "" {
		query = query.Where("date <= ?", endDate)
	}

	// Count total
	if err := query.Count(&total).Error; err != nil {
		return nil, 0, err
	}

	// Get paginated results
	offset := (page - 1) * limit
	err := query.Order("date DESC, created_at DESC").Offset(offset).Limit(limit).Find(&transactions).Error
	return transactions, total, err
}

func (r *FinanceRepository) UpdateTransaction(transaction *models.Transaction) error {
	return r.db.Save(transaction).Error
}

func (r *FinanceRepository) DeleteTransaction(id uint) error {
	return r.db.Delete(&models.Transaction{}, id).Error
}

// Category methods
func (r *FinanceRepository) CreateCategory(category *models.Category) error {
	return r.db.Create(category).Error
}

func (r *FinanceRepository) GetCategoryByID(id uint) (*models.Category, error) {
	var category models.Category
	err := r.db.First(&category, id).Error
	return &category, err
}

func (r *FinanceRepository) GetAllCategories(categoryType string) ([]models.Category, error) {
	var categories []models.Category
	query := r.db.Model(&models.Category{})

	if categoryType != "" && categoryType != "all" {
		query = query.Where("type = ?", categoryType)
	}

	err := query.Order("name ASC").Find(&categories).Error
	return categories, err
}

func (r *FinanceRepository) UpdateCategory(category *models.Category) error {
	return r.db.Save(category).Error
}

func (r *FinanceRepository) DeleteCategory(id uint) error {
	// Check if category has transactions
	var count int64
	r.db.Model(&models.Transaction{}).Where("category_id = ?", id).Count(&count)
	if count > 0 {
		return fmt.Errorf("cannot delete category with existing transactions")
	}
	return r.db.Delete(&models.Category{}, id).Error
}

// Finance Stats methods
func (r *FinanceRepository) GetFinanceStats(startDate, endDate string) (*models.FinanceStats, error) {
	var stats models.FinanceStats

	// Total income
	r.db.Model(&models.Transaction{}).
		Where("type = ?", "income").
		Select("COALESCE(SUM(amount), 0)").
		Scan(&stats.TotalIncome)

	// Total expense
	r.db.Model(&models.Transaction{}).
		Where("type = ?", "expense").
		Select("COALESCE(SUM(amount), 0)").
		Scan(&stats.TotalExpense)

	// Balance
	stats.Balance = stats.TotalIncome - stats.TotalExpense

	// Monthly stats
	currentMonth := time.Now().Format("2006-01")
	
	r.db.Model(&models.Transaction{}).
		Where("type = ? AND date LIKE ?", "income", currentMonth+"%").
		Select("COALESCE(SUM(amount), 0)").
		Scan(&stats.MonthlyIncome)

	r.db.Model(&models.Transaction{}).
		Where("type = ? AND date LIKE ?", "expense", currentMonth+"%").
		Select("COALESCE(SUM(amount), 0)").
		Scan(&stats.MonthlyExpense)

	stats.MonthlyBalance = stats.MonthlyIncome - stats.MonthlyExpense

	// Top categories (expense only, top 5)
	var categorySummaries []models.CategorySummary
	r.db.Model(&models.Transaction{}).
		Select("categories.id as category_id, categories.name as category_name, SUM(transactions.amount) as total_amount, COUNT(*) as transaction_count").
		Joins("JOIN categories ON categories.id = transactions.category_id").
		Where("transactions.type = ?", "expense").
		Group("categories.id, categories.name").
		Order("total_amount DESC").
		Limit(5).
		Scan(&categorySummaries)

	// Calculate percentages
	if stats.TotalExpense > 0 {
		for i := range categorySummaries {
			categorySummaries[i].Percentage = (categorySummaries[i].TotalAmount / stats.TotalExpense) * 100
		}
	}

	stats.TopCategories = categorySummaries

	return &stats, nil
}

// GetCategorySummary gets spending summary by category
func (r *FinanceRepository) GetCategorySummary(startDate, endDate string, transactionType string) ([]models.CategorySummary, error) {
	var summaries []models.CategorySummary

	query := r.db.Model(&models.Transaction{}).
		Select("categories.id as category_id, categories.name as category_name, SUM(transactions.amount) as total_amount, COUNT(*) as transaction_count").
		Joins("JOIN categories ON categories.id = transactions.category_id").
		Group("categories.id, categories.name").
		Order("total_amount DESC")

	if transactionType != "" && transactionType != "all" {
		query = query.Where("transactions.type = ?", transactionType)
	}
	if startDate != "" {
		query = query.Where("transactions.date >= ?", startDate)
	}
	if endDate != "" {
		query = query.Where("transactions.date <= ?", endDate)
	}

	err := query.Scan(&summaries).Error
	if err != nil {
		return nil, err
	}

	// Calculate total for percentage
	var total float64
	for _, summary := range summaries {
		total += summary.TotalAmount
	}

	// Calculate percentages
	if total > 0 {
		for i := range summaries {
			summaries[i].Percentage = (summaries[i].TotalAmount / total) * 100
		}
	}

	return summaries, nil
}

// GetMonthlyTrend gets monthly income/expense trend
func (r *FinanceRepository) GetMonthlyTrend(months int) (map[string]map[string]float64, error) {
	result := make(map[string]map[string]float64)

	// Get data for last N months
	for i := 0; i < months; i++ {
		month := time.Now().AddDate(0, -i, 0).Format("2006-01")
		
		var income, expense float64
		r.db.Model(&models.Transaction{}).
			Where("type = ? AND date LIKE ?", "income", month+"%").
			Select("COALESCE(SUM(amount), 0)").
			Scan(&income)

		r.db.Model(&models.Transaction{}).
			Where("type = ? AND date LIKE ?", "expense", month+"%").
			Select("COALESCE(SUM(amount), 0)").
			Scan(&expense)

		result[month] = map[string]float64{
			"income":  income,
			"expense": expense,
			"balance": income - expense,
		}
	}

	return result, nil
}
