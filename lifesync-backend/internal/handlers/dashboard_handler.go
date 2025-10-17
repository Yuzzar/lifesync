package handlers

import (
	"lifesync-backend/internal/models"
	"lifesync-backend/internal/repository"
	"net/http"

	"github.com/gin-gonic/gin"
)

type DashboardHandler struct {
	habitRepo   *repository.HabitRepository
	financeRepo *repository.FinanceRepository
	jobRepo     *repository.JobRepository
}

func NewDashboardHandler(habitRepo *repository.HabitRepository, financeRepo *repository.FinanceRepository, jobRepo *repository.JobRepository) *DashboardHandler {
	return &DashboardHandler{
		habitRepo:   habitRepo,
		financeRepo: financeRepo,
		jobRepo:     jobRepo,
	}
}

// GetDashboardStats retrieves overall dashboard statistics
func (h *DashboardHandler) GetDashboardStats(c *gin.Context) {
	// Get stats from all modules
	habitStats, err := h.habitRepo.GetHabitStats()
	if err != nil {
		habitStats = &models.HabitStats{}
	}

	financeStats, err := h.financeRepo.GetFinanceStats("", "")
	if err != nil {
		financeStats = &models.FinanceStats{}
	}

	jobStats, err := h.jobRepo.GetJobStats()
	if err != nil {
		jobStats = &models.JobStats{}
	}

	// Quick actions
	quickActions := []models.QuickAction{
		{Title: "Add Habit", Icon: "✅", Route: "/habits/create"},
		{Title: "Log Transaction", Icon: "💰", Route: "/finance/create"},
		{Title: "Add Job", Icon: "💼", Route: "/jobs/create"},
		{Title: "View Reports", Icon: "📊", Route: "/reports"},
	}

	// Combine all stats
	dashboardStats := models.DashboardStats{
		HabitStats:   *habitStats,
		FinanceStats: *financeStats,
		JobStats:     *jobStats,
		QuickActions: quickActions,
	}

	c.JSON(http.StatusOK, models.Response{
		Success: true,
		Message: "Dashboard stats retrieved successfully",
		Data:    dashboardStats,
	})
}
