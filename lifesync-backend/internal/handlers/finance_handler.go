package handlers

import (
	"lifesync-backend/internal/models"
	"lifesync-backend/internal/repository"
	"net/http"
	"strconv"

	"github.com/gin-gonic/gin"
)

type FinanceHandler struct {
	repo *repository.FinanceRepository
}

func NewFinanceHandler(repo *repository.FinanceRepository) *FinanceHandler {
	return &FinanceHandler{repo: repo}
}

// Transaction handlers
func (h *FinanceHandler) CreateTransaction(c *gin.Context) {
	var req models.CreateTransactionRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, models.Response{
			Success: false,
			Message: "Invalid request",
			Error:   err.Error(),
		})
		return
	}

	transaction := &models.Transaction{
		Type:               req.Type,
		Amount:             req.Amount,
		CategoryID:         req.CategoryID,
		Description:        req.Description,
		Date:               req.Date,
		Notes:              req.Notes,
		IsRecurring:        req.IsRecurring,
		RecurringFrequency: req.RecurringFrequency,
	}

	if err := h.repo.CreateTransaction(transaction); err != nil {
		c.JSON(http.StatusInternalServerError, models.Response{
			Success: false,
			Message: "Failed to create transaction",
			Error:   err.Error(),
		})
		return
	}

	// Reload with category
	transaction, _ = h.repo.GetTransactionByID(transaction.ID)

	c.JSON(http.StatusCreated, models.Response{
		Success: true,
		Message: "Transaction created successfully",
		Data:    transaction,
	})
}

func (h *FinanceHandler) GetTransaction(c *gin.Context) {
	id, err := strconv.ParseUint(c.Param("id"), 10, 32)
	if err != nil {
		c.JSON(http.StatusBadRequest, models.Response{
			Success: false,
			Message: "Invalid transaction ID",
			Error:   err.Error(),
		})
		return
	}

	transaction, err := h.repo.GetTransactionByID(uint(id))
	if err != nil {
		c.JSON(http.StatusNotFound, models.Response{
			Success: false,
			Message: "Transaction not found",
			Error:   err.Error(),
		})
		return
	}

	c.JSON(http.StatusOK, models.Response{
		Success: true,
		Message: "Transaction retrieved successfully",
		Data:    transaction,
	})
}

func (h *FinanceHandler) GetAllTransactions(c *gin.Context) {
	page, _ := strconv.Atoi(c.DefaultQuery("page", "1"))
	limit, _ := strconv.Atoi(c.DefaultQuery("limit", "20"))
	search := c.Query("search")
	transactionType := c.Query("type")
	startDate := c.Query("start_date")
	endDate := c.Query("end_date")

	transactions, total, err := h.repo.GetAllTransactions(page, limit, search, transactionType, startDate, endDate)
	if err != nil {
		c.JSON(http.StatusInternalServerError, models.Response{
			Success: false,
			Message: "Failed to retrieve transactions",
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
		Message: "Transactions retrieved successfully",
		Data:    transactions,
		Meta: models.PaginationMeta{
			CurrentPage: page,
			PerPage:     limit,
			TotalPages:  totalPages,
			TotalItems:  total,
		},
	})
}

func (h *FinanceHandler) UpdateTransaction(c *gin.Context) {
	id, err := strconv.ParseUint(c.Param("id"), 10, 32)
	if err != nil {
		c.JSON(http.StatusBadRequest, models.Response{
			Success: false,
			Message: "Invalid transaction ID",
			Error:   err.Error(),
		})
		return
	}

	transaction, err := h.repo.GetTransactionByID(uint(id))
	if err != nil {
		c.JSON(http.StatusNotFound, models.Response{
			Success: false,
			Message: "Transaction not found",
			Error:   err.Error(),
		})
		return
	}

	var req models.UpdateTransactionRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, models.Response{
			Success: false,
			Message: "Invalid request",
			Error:   err.Error(),
		})
		return
	}

	if req.Type != nil {
		transaction.Type = *req.Type
	}
	if req.Amount != nil {
		transaction.Amount = *req.Amount
	}
	if req.CategoryID != nil {
		transaction.CategoryID = *req.CategoryID
	}
	if req.Description != nil {
		transaction.Description = *req.Description
	}
	if req.Date != nil {
		transaction.Date = *req.Date
	}
	if req.Notes != nil {
		transaction.Notes = *req.Notes
	}
	if req.IsRecurring != nil {
		transaction.IsRecurring = *req.IsRecurring
	}
	if req.RecurringFrequency != nil {
		transaction.RecurringFrequency = *req.RecurringFrequency
	}

	if err := h.repo.UpdateTransaction(transaction); err != nil {
		c.JSON(http.StatusInternalServerError, models.Response{
			Success: false,
			Message: "Failed to update transaction",
			Error:   err.Error(),
		})
		return
	}

	c.JSON(http.StatusOK, models.Response{
		Success: true,
		Message: "Transaction updated successfully",
		Data:    transaction,
	})
}

func (h *FinanceHandler) DeleteTransaction(c *gin.Context) {
	id, err := strconv.ParseUint(c.Param("id"), 10, 32)
	if err != nil {
		c.JSON(http.StatusBadRequest, models.Response{
			Success: false,
			Message: "Invalid transaction ID",
			Error:   err.Error(),
		})
		return
	}

	if err := h.repo.DeleteTransaction(uint(id)); err != nil {
		c.JSON(http.StatusInternalServerError, models.Response{
			Success: false,
			Message: "Failed to delete transaction",
			Error:   err.Error(),
		})
		return
	}

	c.JSON(http.StatusOK, models.Response{
		Success: true,
		Message: "Transaction deleted successfully",
	})
}

// Category handlers
func (h *FinanceHandler) CreateCategory(c *gin.Context) {
	var req models.CreateCategoryRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, models.Response{
			Success: false,
			Message: "Invalid request",
			Error:   err.Error(),
		})
		return
	}

	category := &models.Category{
		Name:   req.Name,
		Type:   req.Type,
		Icon:   req.Icon,
		Color:  req.Color,
		Budget: req.Budget,
	}

	if category.Color == "" {
		category.Color = "#2563eb"
	}

	if err := h.repo.CreateCategory(category); err != nil {
		c.JSON(http.StatusInternalServerError, models.Response{
			Success: false,
			Message: "Failed to create category",
			Error:   err.Error(),
		})
		return
	}

	c.JSON(http.StatusCreated, models.Response{
		Success: true,
		Message: "Category created successfully",
		Data:    category,
	})
}

func (h *FinanceHandler) GetAllCategories(c *gin.Context) {
	categoryType := c.Query("type")

	categories, err := h.repo.GetAllCategories(categoryType)
	if err != nil {
		c.JSON(http.StatusInternalServerError, models.Response{
			Success: false,
			Message: "Failed to retrieve categories",
			Error:   err.Error(),
		})
		return
	}

	c.JSON(http.StatusOK, models.Response{
		Success: true,
		Message: "Categories retrieved successfully",
		Data:    categories,
	})
}

func (h *FinanceHandler) UpdateCategory(c *gin.Context) {
	id, err := strconv.ParseUint(c.Param("id"), 10, 32)
	if err != nil {
		c.JSON(http.StatusBadRequest, models.Response{
			Success: false,
			Message: "Invalid category ID",
			Error:   err.Error(),
		})
		return
	}

	category, err := h.repo.GetCategoryByID(uint(id))
	if err != nil {
		c.JSON(http.StatusNotFound, models.Response{
			Success: false,
			Message: "Category not found",
			Error:   err.Error(),
		})
		return
	}

	var req models.UpdateCategoryRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, models.Response{
			Success: false,
			Message: "Invalid request",
			Error:   err.Error(),
		})
		return
	}

	if req.Name != nil {
		category.Name = *req.Name
	}
	if req.Icon != nil {
		category.Icon = *req.Icon
	}
	if req.Color != nil {
		category.Color = *req.Color
	}
	if req.Budget != nil {
		category.Budget = *req.Budget
	}

	if err := h.repo.UpdateCategory(category); err != nil {
		c.JSON(http.StatusInternalServerError, models.Response{
			Success: false,
			Message: "Failed to update category",
			Error:   err.Error(),
		})
		return
	}

	c.JSON(http.StatusOK, models.Response{
		Success: true,
		Message: "Category updated successfully",
		Data:    category,
	})
}

func (h *FinanceHandler) DeleteCategory(c *gin.Context) {
	id, err := strconv.ParseUint(c.Param("id"), 10, 32)
	if err != nil {
		c.JSON(http.StatusBadRequest, models.Response{
			Success: false,
			Message: "Invalid category ID",
			Error:   err.Error(),
		})
		return
	}

	if err := h.repo.DeleteCategory(uint(id)); err != nil {
		c.JSON(http.StatusBadRequest, models.Response{
			Success: false,
			Message: "Failed to delete category",
			Error:   err.Error(),
		})
		return
	}

	c.JSON(http.StatusOK, models.Response{
		Success: true,
		Message: "Category deleted successfully",
	})
}

// Stats and reports
func (h *FinanceHandler) GetFinanceStats(c *gin.Context) {
	startDate := c.Query("start_date")
	endDate := c.Query("end_date")

	stats, err := h.repo.GetFinanceStats(startDate, endDate)
	if err != nil {
		c.JSON(http.StatusInternalServerError, models.Response{
			Success: false,
			Message: "Failed to retrieve finance stats",
			Error:   err.Error(),
		})
		return
	}

	c.JSON(http.StatusOK, models.Response{
		Success: true,
		Message: "Finance stats retrieved successfully",
		Data:    stats,
	})
}

func (h *FinanceHandler) GetCategorySummary(c *gin.Context) {
	startDate := c.Query("start_date")
	endDate := c.Query("end_date")
	transactionType := c.Query("type")

	summary, err := h.repo.GetCategorySummary(startDate, endDate, transactionType)
	if err != nil {
		c.JSON(http.StatusInternalServerError, models.Response{
			Success: false,
			Message: "Failed to retrieve category summary",
			Error:   err.Error(),
		})
		return
	}

	c.JSON(http.StatusOK, models.Response{
		Success: true,
		Message: "Category summary retrieved successfully",
		Data:    summary,
	})
}

func (h *FinanceHandler) GetMonthlyTrend(c *gin.Context) {
	months, _ := strconv.Atoi(c.DefaultQuery("months", "6"))

	trend, err := h.repo.GetMonthlyTrend(months)
	if err != nil {
		c.JSON(http.StatusInternalServerError, models.Response{
			Success: false,
			Message: "Failed to retrieve monthly trend",
			Error:   err.Error(),
		})
		return
	}

	c.JSON(http.StatusOK, models.Response{
		Success: true,
		Message: "Monthly trend retrieved successfully",
		Data:    trend,
	})
}
