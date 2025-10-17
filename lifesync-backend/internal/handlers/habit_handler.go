package handlers

import (
	"lifesync-backend/internal/models"
	"lifesync-backend/internal/repository"
	"net/http"
	"strconv"
	"time"

	"github.com/gin-gonic/gin"
)

type HabitHandler struct {
	repo *repository.HabitRepository
}

func NewHabitHandler(repo *repository.HabitRepository) *HabitHandler {
	return &HabitHandler{repo: repo}
}

// CreateHabit creates a new habit
// @Summary Create a new habit
// @Tags habits
// @Accept json
// @Produce json
// @Param habit body models.CreateHabitRequest true "Habit data"
// @Success 201 {object} models.Response
// @Router /api/v1/habits [post]
func (h *HabitHandler) CreateHabit(c *gin.Context) {
	var req models.CreateHabitRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, models.Response{
			Success: false,
			Message: "Invalid request",
			Error:   err.Error(),
		})
		return
	}

	habit := &models.Habit{
		Name:         req.Name,
		Description:  req.Description,
		Category:     req.Category,
		Color:        req.Color,
		Icon:         req.Icon,
		Frequency:    req.Frequency,
		TargetDays:   req.TargetDays,
		ReminderTime: req.ReminderTime,
		IsActive:     true,
	}

	if habit.Frequency == "" {
		habit.Frequency = "daily"
	}
	if habit.Color == "" {
		habit.Color = "#2563eb"
	}

	if err := h.repo.CreateHabit(habit); err != nil {
		c.JSON(http.StatusInternalServerError, models.Response{
			Success: false,
			Message: "Failed to create habit",
			Error:   err.Error(),
		})
		return
	}

	c.JSON(http.StatusCreated, models.Response{
		Success: true,
		Message: "Habit created successfully",
		Data:    habit,
	})
}

// GetHabit retrieves a habit by ID
// @Summary Get habit by ID
// @Tags habits
// @Produce json
// @Param id path int true "Habit ID"
// @Success 200 {object} models.Response
// @Router /api/v1/habits/{id} [get]
func (h *HabitHandler) GetHabit(c *gin.Context) {
	id, err := strconv.ParseUint(c.Param("id"), 10, 32)
	if err != nil {
		c.JSON(http.StatusBadRequest, models.Response{
			Success: false,
			Message: "Invalid habit ID",
			Error:   err.Error(),
		})
		return
	}

	habit, err := h.repo.GetHabitByID(uint(id))
	if err != nil {
		c.JSON(http.StatusNotFound, models.Response{
			Success: false,
			Message: "Habit not found",
			Error:   err.Error(),
		})
		return
	}

	c.JSON(http.StatusOK, models.Response{
		Success: true,
		Message: "Habit retrieved successfully",
		Data:    habit,
	})
}

// GetAllHabits retrieves all habits
// @Summary Get all habits
// @Tags habits
// @Produce json
// @Param page query int false "Page number"
// @Param limit query int false "Items per page"
// @Param search query string false "Search query"
// @Success 200 {object} models.PaginatedResponse
// @Router /api/v1/habits [get]
func (h *HabitHandler) GetAllHabits(c *gin.Context) {
	page, _ := strconv.Atoi(c.DefaultQuery("page", "1"))
	limit, _ := strconv.Atoi(c.DefaultQuery("limit", "20"))
	search := c.Query("search")

	habits, total, err := h.repo.GetAllHabits(page, limit, search)
	if err != nil {
		c.JSON(http.StatusInternalServerError, models.Response{
			Success: false,
			Message: "Failed to retrieve habits",
			Error:   err.Error(),
		})
		return
	}

	totalPages := int(total) / limit
	if int(total)%limit != 0 {
		totalPages++
	}

	c.JSON(http.StatusOK, models.PaginatedResponse{
		Success: true,
		Message: "Habits retrieved successfully",
		Data:    habits,
		Meta: models.PaginationMeta{
			CurrentPage: page,
			PerPage:     limit,
			TotalPages:  totalPages,
			TotalItems:  total,
		},
	})
}

// UpdateHabit updates a habit
// @Summary Update habit
// @Tags habits
// @Accept json
// @Produce json
// @Param id path int true "Habit ID"
// @Param habit body models.UpdateHabitRequest true "Updated habit data"
// @Success 200 {object} models.Response
// @Router /api/v1/habits/{id} [put]
func (h *HabitHandler) UpdateHabit(c *gin.Context) {
	id, err := strconv.ParseUint(c.Param("id"), 10, 32)
	if err != nil {
		c.JSON(http.StatusBadRequest, models.Response{
			Success: false,
			Message: "Invalid habit ID",
			Error:   err.Error(),
		})
		return
	}

	habit, err := h.repo.GetHabitByID(uint(id))
	if err != nil {
		c.JSON(http.StatusNotFound, models.Response{
			Success: false,
			Message: "Habit not found",
			Error:   err.Error(),
		})
		return
	}

	var req models.UpdateHabitRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, models.Response{
			Success: false,
			Message: "Invalid request",
			Error:   err.Error(),
		})
		return
	}

	// Update fields if provided
	if req.Name != nil {
		habit.Name = *req.Name
	}
	if req.Description != nil {
		habit.Description = *req.Description
	}
	if req.Category != nil {
		habit.Category = *req.Category
	}
	if req.Color != nil {
		habit.Color = *req.Color
	}
	if req.Icon != nil {
		habit.Icon = *req.Icon
	}
	if req.Frequency != nil {
		habit.Frequency = *req.Frequency
	}
	if req.TargetDays != nil {
		habit.TargetDays = *req.TargetDays
	}
	if req.ReminderTime != nil {
		habit.ReminderTime = *req.ReminderTime
	}
	if req.IsActive != nil {
		habit.IsActive = *req.IsActive
	}

	if err := h.repo.UpdateHabit(habit); err != nil {
		c.JSON(http.StatusInternalServerError, models.Response{
			Success: false,
			Message: "Failed to update habit",
			Error:   err.Error(),
		})
		return
	}

	c.JSON(http.StatusOK, models.Response{
		Success: true,
		Message: "Habit updated successfully",
		Data:    habit,
	})
}

// DeleteHabit deletes a habit
// @Summary Delete habit
// @Tags habits
// @Produce json
// @Param id path int true "Habit ID"
// @Success 200 {object} models.Response
// @Router /api/v1/habits/{id} [delete]
func (h *HabitHandler) DeleteHabit(c *gin.Context) {
	id, err := strconv.ParseUint(c.Param("id"), 10, 32)
	if err != nil {
		c.JSON(http.StatusBadRequest, models.Response{
			Success: false,
			Message: "Invalid habit ID",
			Error:   err.Error(),
		})
		return
	}

	if err := h.repo.DeleteHabit(uint(id)); err != nil {
		c.JSON(http.StatusInternalServerError, models.Response{
			Success: false,
			Message: "Failed to delete habit",
			Error:   err.Error(),
		})
		return
	}

	c.JSON(http.StatusOK, models.Response{
		Success: true,
		Message: "Habit deleted successfully",
	})
}

// CheckHabit marks a habit as complete/incomplete for a specific date
// @Summary Check habit completion
// @Tags habits
// @Accept json
// @Produce json
// @Param id path int true "Habit ID"
// @Param check body models.CheckHabitRequest true "Check data"
// @Success 200 {object} models.Response
// @Router /api/v1/habits/{id}/check [post]
func (h *HabitHandler) CheckHabit(c *gin.Context) {
	id, err := strconv.ParseUint(c.Param("id"), 10, 32)
	if err != nil {
		c.JSON(http.StatusBadRequest, models.Response{
			Success: false,
			Message: "Invalid habit ID",
			Error:   err.Error(),
		})
		return
	}

	var req models.CheckHabitRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, models.Response{
			Success: false,
			Message: "Invalid request",
			Error:   err.Error(),
		})
		return
	}

	habitID := uint(id)

	// Check if log already exists
	existingLog, err := h.repo.GetHabitLog(habitID, req.Date)
	if err == nil {
		// Update existing log
		existingLog.Completed = req.Completed
		existingLog.Notes = req.Notes
		if err := h.repo.UpdateHabitLog(existingLog); err != nil {
			c.JSON(http.StatusInternalServerError, models.Response{
				Success: false,
				Message: "Failed to update habit log",
				Error:   err.Error(),
			})
			return
		}
	} else {
		// Create new log
		log := &models.HabitLog{
			HabitID:   habitID,
			Date:      req.Date,
			Completed: req.Completed,
			Notes:     req.Notes,
		}
		if err := h.repo.CreateHabitLog(log); err != nil {
			c.JSON(http.StatusInternalServerError, models.Response{
				Success: false,
				Message: "Failed to create habit log",
				Error:   err.Error(),
			})
			return
		}
	}

	// Update streak
	currentStreak, bestStreak, err := h.repo.CalculateStreak(habitID)
	if err == nil {
		habit, _ := h.repo.GetHabitByID(habitID)
		habit.CurrentStreak = currentStreak
		if bestStreak > habit.BestStreak {
			habit.BestStreak = bestStreak
		}
		if req.Completed {
			habit.TotalCompleted++
		}
		h.repo.UpdateHabit(habit)
	}

	c.JSON(http.StatusOK, models.Response{
		Success: true,
		Message: "Habit checked successfully",
	})
}

// GetHabitLogs retrieves habit completion logs
// @Summary Get habit logs
// @Tags habits
// @Produce json
// @Param id path int true "Habit ID"
// @Param start_date query string false "Start date (YYYY-MM-DD)"
// @Param end_date query string false "End date (YYYY-MM-DD)"
// @Success 200 {object} models.Response
// @Router /api/v1/habits/{id}/logs [get]
func (h *HabitHandler) GetHabitLogs(c *gin.Context) {
	id, err := strconv.ParseUint(c.Param("id"), 10, 32)
	if err != nil {
		c.JSON(http.StatusBadRequest, models.Response{
			Success: false,
			Message: "Invalid habit ID",
			Error:   err.Error(),
		})
		return
	}

	startDate := c.Query("start_date")
	endDate := c.Query("end_date")

	// Default to last 30 days if not specified
	if endDate == "" {
		endDate = time.Now().Format("2006-01-02")
	}
	if startDate == "" {
		startDate = time.Now().AddDate(0, 0, -30).Format("2006-01-02")
	}

	logs, err := h.repo.GetHabitLogs(uint(id), startDate, endDate)
	if err != nil {
		c.JSON(http.StatusInternalServerError, models.Response{
			Success: false,
			Message: "Failed to retrieve habit logs",
			Error:   err.Error(),
		})
		return
	}

	c.JSON(http.StatusOK, models.Response{
		Success: true,
		Message: "Habit logs retrieved successfully",
		Data:    logs,
	})
}

// GetHabitStats retrieves habit statistics
// @Summary Get habit statistics
// @Tags habits
// @Produce json
// @Success 200 {object} models.Response
// @Router /api/v1/habits/stats [get]
func (h *HabitHandler) GetHabitStats(c *gin.Context) {
	stats, err := h.repo.GetHabitStats()
	if err != nil {
		c.JSON(http.StatusInternalServerError, models.Response{
			Success: false,
			Message: "Failed to retrieve habit stats",
			Error:   err.Error(),
		})
		return
	}

	c.JSON(http.StatusOK, models.Response{
		Success: true,
		Message: "Habit stats retrieved successfully",
		Data:    stats,
	})
}
