package database

import (
	"fmt"
	"lifesync-backend/config"
	"lifesync-backend/internal/models"
	"log"
	"time"

	"gorm.io/driver/postgres"
	"gorm.io/gorm"
	"gorm.io/gorm/logger"
)

var DB *gorm.DB

// InitDatabase initializes database connection
func InitDatabase() error {
	var err error
	
	// Load configuration
	cfg := config.LoadConfig()
	
	// Use PostgreSQL
	DB, err = gorm.Open(postgres.Open(cfg.DatabaseURL), &gorm.Config{
		Logger: logger.Default.LogMode(logger.Info),
		NowFunc: func() time.Time {
			return time.Now().UTC()
		},
	})
	
	if err != nil {
		return fmt.Errorf("failed to connect database: %w", err)
	}
	
	log.Println("✅ Database connected successfully")
	
	// Auto migrate all models
	if err := AutoMigrate(); err != nil {
		return fmt.Errorf("failed to migrate database: %w", err)
	}
	
	// Seed default data
	if err := SeedDefaultData(); err != nil {
		return fmt.Errorf("failed to seed data: %w", err)
	}
	
	return nil
}

// AutoMigrate runs database migrations
func AutoMigrate() error {
	log.Println("🔄 Running database migrations...")
	
	err := DB.AutoMigrate(
		// Habit models
		&models.Habit{},
		&models.HabitLog{},
		
		// Finance models
		&models.Category{},
		&models.Transaction{},
		&models.Budget{},
		
		// Job models
		&models.JobApplication{},
		&models.Interview{},
		&models.Project{},
		&models.ProjectTask{},
		&models.Milestone{},
	)
	
	if err != nil {
		return err
	}
	
	log.Println("✅ Database migrations completed")
	return nil
}

// SeedDefaultData seeds initial data
func SeedDefaultData() error {
	log.Println("🌱 Seeding default data...")
	
	// Check if categories already exist
	var count int64
	DB.Model(&models.Category{}).Count(&count)
	
	if count > 0 {
		log.Println("⏭️  Default data already exists, skipping seed")
		return nil
	}
	
	// Default expense categories
	expenseCategories := []models.Category{
		{Name: "Food & Dining", Type: "expense", Icon: "🍔", Color: "#f59e0b", IsDefault: true},
		{Name: "Transportation", Type: "expense", Icon: "🚗", Color: "#3b82f6", IsDefault: true},
		{Name: "Shopping", Type: "expense", Icon: "🛍️", Color: "#ec4899", IsDefault: true},
		{Name: "Entertainment", Type: "expense", Icon: "🎬", Color: "#8b5cf6", IsDefault: true},
		{Name: "Bills & Utilities", Type: "expense", Icon: "💡", Color: "#ef4444", IsDefault: true},
		{Name: "Healthcare", Type: "expense", Icon: "🏥", Color: "#10b981", IsDefault: true},
		{Name: "Education", Type: "expense", Icon: "📚", Color: "#6366f1", IsDefault: true},
		{Name: "Others", Type: "expense", Icon: "📦", Color: "#6b7280", IsDefault: true},
	}
	
	// Default income categories
	incomeCategories := []models.Category{
		{Name: "Salary", Type: "income", Icon: "💰", Color: "#10b981", IsDefault: true},
		{Name: "Freelance", Type: "income", Icon: "💼", Color: "#3b82f6", IsDefault: true},
		{Name: "Investment", Type: "income", Icon: "📈", Color: "#8b5cf6", IsDefault: true},
		{Name: "Business", Type: "income", Icon: "🏢", Color: "#f59e0b", IsDefault: true},
		{Name: "Gift", Type: "income", Icon: "🎁", Color: "#ec4899", IsDefault: true},
		{Name: "Others", Type: "income", Icon: "💵", Color: "#6b7280", IsDefault: true},
	}
	
	// Insert categories
	for _, cat := range expenseCategories {
		if err := DB.Create(&cat).Error; err != nil {
			log.Printf("⚠️  Failed to create category %s: %v", cat.Name, err)
		}
	}
	
	for _, cat := range incomeCategories {
		if err := DB.Create(&cat).Error; err != nil {
			log.Printf("⚠️  Failed to create category %s: %v", cat.Name, err)
		}
	}
	
	log.Println("✅ Default data seeded successfully")
	return nil
}

// GetDB returns database instance
func GetDB() *gorm.DB {
	return DB
}
