package models

import (
	"time"
)

// Transaction represents a financial transaction
type Transaction struct {
	ID          uint      `json:"id" gorm:"primaryKey"`
	Type        string    `json:"type" gorm:"not null"` // income, expense
	Amount      float64   `json:"amount" gorm:"not null"`
	CategoryID  uint      `json:"category_id" gorm:"not null;index"`
	Description string    `json:"description"`
	Date        string    `json:"date" gorm:"not null;index"` // YYYY-MM-DD
	Notes       string    `json:"notes"`
	IsRecurring bool      `json:"is_recurring" gorm:"default:false"`
	RecurringFrequency string `json:"recurring_frequency"` // monthly, weekly, yearly
	CreatedAt   time.Time `json:"created_at"`
	UpdatedAt   time.Time `json:"updated_at"`
	
	Category    Category  `json:"category,omitempty" gorm:"foreignKey:CategoryID"`
}

// Category represents transaction categories
type Category struct {
	ID        uint      `json:"id" gorm:"primaryKey"`
	Name      string    `json:"name" gorm:"not null;uniqueIndex"`
	Type      string    `json:"type" gorm:"not null"` // income, expense
	Icon      string    `json:"icon"`
	Color     string    `json:"color" gorm:"default:#2563eb"`
	Budget    float64   `json:"budget" gorm:"default:0"`
	IsDefault bool      `json:"is_default" gorm:"default:false"`
	CreatedAt time.Time `json:"created_at"`
	UpdatedAt time.Time `json:"updated_at"`
}

// Budget represents monthly budget planning
type Budget struct {
	ID          uint      `json:"id" gorm:"primaryKey"`
	CategoryID  uint      `json:"category_id" gorm:"not null;index"`
	Month       string    `json:"month" gorm:"not null;index"` // YYYY-MM
	Amount      float64   `json:"amount" gorm:"not null"`
	Spent       float64   `json:"spent" gorm:"default:0"`
	CreatedAt   time.Time `json:"created_at"`
	UpdatedAt   time.Time `json:"updated_at"`
	
	Category    Category  `json:"category,omitempty" gorm:"foreignKey:CategoryID"`
}

// FinanceStats represents financial statistics
type FinanceStats struct {
	TotalIncome      float64            `json:"total_income"`
	TotalExpense     float64            `json:"total_expense"`
	Balance          float64            `json:"balance"`
	MonthlyIncome    float64            `json:"monthly_income"`
	MonthlyExpense   float64            `json:"monthly_expense"`
	MonthlyBalance   float64            `json:"monthly_balance"`
	TopCategories    []CategorySummary  `json:"top_categories"`
	BudgetUtilization float64           `json:"budget_utilization"`
}

// CategorySummary for analytics
type CategorySummary struct {
	CategoryID   uint    `json:"category_id"`
	CategoryName string  `json:"category_name"`
	TotalAmount  float64 `json:"total_amount"`
	Percentage   float64 `json:"percentage"`
	TransactionCount int `json:"transaction_count"`
}

// CreateTransactionRequest for creating new transaction
type CreateTransactionRequest struct {
	Type        string  `json:"type" binding:"required,oneof=income expense"`
	Amount      float64 `json:"amount" binding:"required,gt=0"`
	CategoryID  uint    `json:"category_id" binding:"required"`
	Description string  `json:"description"`
	Date        string  `json:"date" binding:"required"`
	Notes       string  `json:"notes"`
	IsRecurring bool    `json:"is_recurring"`
	RecurringFrequency string `json:"recurring_frequency"`
}

// UpdateTransactionRequest for updating transaction
type UpdateTransactionRequest struct {
	Type        *string  `json:"type"`
	Amount      *float64 `json:"amount"`
	CategoryID  *uint    `json:"category_id"`
	Description *string  `json:"description"`
	Date        *string  `json:"date"`
	Notes       *string  `json:"notes"`
	IsRecurring *bool    `json:"is_recurring"`
	RecurringFrequency *string `json:"recurring_frequency"`
}

// CreateCategoryRequest for creating new category
type CreateCategoryRequest struct {
	Name   string  `json:"name" binding:"required"`
	Type   string  `json:"type" binding:"required,oneof=income expense"`
	Icon   string  `json:"icon"`
	Color  string  `json:"color"`
	Budget float64 `json:"budget"`
}

// UpdateCategoryRequest for updating category
type UpdateCategoryRequest struct {
	Name   *string  `json:"name"`
	Icon   *string  `json:"icon"`
	Color  *string  `json:"color"`
	Budget *float64 `json:"budget"`
}

// ReportQuery for generating reports
type ReportQuery struct {
	StartDate string `form:"start_date"`
	EndDate   string `form:"end_date"`
	Type      string `form:"type"` // income, expense, all
	CategoryID *uint `form:"category_id"`
}
