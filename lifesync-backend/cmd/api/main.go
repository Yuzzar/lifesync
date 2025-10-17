package main

import (
	"lifesync-backend/config"
	"lifesync-backend/internal/database"
	"lifesync-backend/internal/handlers"
	"lifesync-backend/internal/middleware"
	"lifesync-backend/internal/repository"
	"log"

	"github.com/gin-gonic/gin"
)

func main() {
	// Load configuration
	cfg := config.LoadConfig()

	// Initialize database
	if err := database.InitDatabase(); err != nil {
		log.Fatal("Failed to initialize database:", err)
	}

	// Get database instance
	db := database.GetDB()

	// Initialize repositories
	habitRepo := repository.NewHabitRepository(db)
	financeRepo := repository.NewFinanceRepository(db)
	jobRepo := repository.NewJobRepository(db)

	// Initialize handlers
	habitHandler := handlers.NewHabitHandler(habitRepo)
	financeHandler := handlers.NewFinanceHandler(financeRepo)
	jobHandler := handlers.NewJobHandler(jobRepo)
	dashboardHandler := handlers.NewDashboardHandler(habitRepo, financeRepo, jobRepo)

	// Initialize Gin router
	router := gin.Default()

	// Apply middleware
	router.Use(middleware.CORS())
	router.Use(middleware.Logger())
	router.Use(middleware.ErrorHandler())

	// Health check
	router.GET("/health", func(c *gin.Context) {
		c.JSON(200, gin.H{
			"status":  "ok",
			"message": "LifeSync API is running",
		})
	})

	// API routes (no version prefix for simplicity)
	api := router.Group("")
	{
		// Dashboard routes
		dashboard := api.Group("/dashboard")
		{
			dashboard.GET("/stats", dashboardHandler.GetDashboardStats)
		}

		// Habit routes
		habits := api.Group("/habits")
		{
			habits.POST("", habitHandler.CreateHabit)
			habits.GET("", habitHandler.GetAllHabits)
			habits.GET("/stats", habitHandler.GetHabitStats)
			habits.GET("/:id", habitHandler.GetHabit)
			habits.PUT("/:id", habitHandler.UpdateHabit)
			habits.DELETE("/:id", habitHandler.DeleteHabit)
			habits.POST("/:id/check", habitHandler.CheckHabit)
			habits.GET("/:id/logs", habitHandler.GetHabitLogs)
		}

		// Finance routes
		finance := api.Group("/finance")
		{
			// Transactions
			transactions := finance.Group("/transactions")
			{
				transactions.POST("", financeHandler.CreateTransaction)
				transactions.GET("", financeHandler.GetAllTransactions)
				transactions.GET("/:id", financeHandler.GetTransaction)
				transactions.PUT("/:id", financeHandler.UpdateTransaction)
				transactions.DELETE("/:id", financeHandler.DeleteTransaction)
			}

			// Categories
			categories := finance.Group("/categories")
			{
				categories.POST("", financeHandler.CreateCategory)
				categories.GET("", financeHandler.GetAllCategories)
				categories.PUT("/:id", financeHandler.UpdateCategory)
				categories.DELETE("/:id", financeHandler.DeleteCategory)
			}

			// Stats & Reports
			finance.GET("/stats", financeHandler.GetFinanceStats)
			finance.GET("/reports/category-summary", financeHandler.GetCategorySummary)
			finance.GET("/reports/monthly-trend", financeHandler.GetMonthlyTrend)
		}

		// Job routes
		jobs := api.Group("/jobs")
		{
			// Job Applications
			applications := jobs.Group("/applications")
			{
				applications.POST("", jobHandler.CreateJobApplication)
				applications.GET("", jobHandler.GetAllJobApplications)
				applications.GET("/:id", jobHandler.GetJobApplication)
				applications.PUT("/:id", jobHandler.UpdateJobApplication)
				applications.DELETE("/:id", jobHandler.DeleteJobApplication)
				applications.POST("/:id/interviews", jobHandler.CreateInterview)
			}

			// Projects
			projects := jobs.Group("/projects")
			{
				projects.POST("", jobHandler.CreateProject)
				projects.GET("", jobHandler.GetAllProjects)
				projects.GET("/:id", jobHandler.GetProject)
				projects.PUT("/:id", jobHandler.UpdateProject)
				projects.DELETE("/:id", jobHandler.DeleteProject)
				projects.POST("/:id/tasks", jobHandler.CreateProjectTask)
				projects.GET("/:id/tasks", jobHandler.GetProjectTasks)
			}

			// Stats
			jobs.GET("/stats", jobHandler.GetJobStats)
		}
	}

	// Start server
	log.Printf("🚀 Server is starting on port %s", cfg.Port)
	log.Printf("📝 API documentation: http://localhost:%s/health", cfg.Port)
	log.Printf("🔗 Base URL: http://localhost:%s", cfg.Port)
	
	if err := router.Run(":" + cfg.Port); err != nil {
		log.Fatal("Failed to start server:", err)
	}
}
