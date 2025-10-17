package handlers

import (
	"lifesync-backend/internal/models"
	"lifesync-backend/internal/repository"
	"net/http"
	"strconv"

	"github.com/gin-gonic/gin"
)

type JobHandler struct {
	repo *repository.JobRepository
}

func NewJobHandler(repo *repository.JobRepository) *JobHandler {
	return &JobHandler{repo: repo}
}

// Job Application handlers
func (h *JobHandler) CreateJobApplication(c *gin.Context) {
	var req models.CreateJobApplicationRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, models.Response{
			Success: false,
			Message: "Invalid request",
			Error:   err.Error(),
		})
		return
	}

	app := &models.JobApplication{
		CompanyName:     req.CompanyName,
		Position:        req.Position,
		CompanyLogo:     req.CompanyLogo,
		CompanyWebsite:  req.CompanyWebsite,
		JobDescription:  req.JobDescription,
		Location:        req.Location,
		WorkType:        req.WorkType,
		SalaryMin:       req.SalaryMin,
		SalaryMax:       req.SalaryMax,
		Currency:        req.Currency,
		Status:          req.Status,
		Priority:        req.Priority,
		Platform:        req.Platform,
		JobURL:          req.JobURL,
		AppliedDate:     req.AppliedDate,
		CVVersion:       req.CVVersion,
		CoverLetter:     req.CoverLetter,
		ReferralName:    req.ReferralName,
		ReferralContact: req.ReferralContact,
		Notes:           req.Notes,
	}

	if app.Currency == "" {
		app.Currency = "USD"
	}

	if err := h.repo.CreateJobApplication(app); err != nil {
		c.JSON(http.StatusInternalServerError, models.Response{
			Success: false,
			Message: "Failed to create job application",
			Error:   err.Error(),
		})
		return
	}

	c.JSON(http.StatusCreated, models.Response{
		Success: true,
		Message: "Job application created successfully",
		Data:    app,
	})
}

func (h *JobHandler) GetJobApplication(c *gin.Context) {
	id, err := strconv.ParseUint(c.Param("id"), 10, 32)
	if err != nil {
		c.JSON(http.StatusBadRequest, models.Response{
			Success: false,
			Message: "Invalid application ID",
			Error:   err.Error(),
		})
		return
	}

	app, err := h.repo.GetJobApplicationByID(uint(id))
	if err != nil {
		c.JSON(http.StatusNotFound, models.Response{
			Success: false,
			Message: "Job application not found",
			Error:   err.Error(),
		})
		return
	}

	c.JSON(http.StatusOK, models.Response{
		Success: true,
		Message: "Job application retrieved successfully",
		Data:    app,
	})
}

func (h *JobHandler) GetAllJobApplications(c *gin.Context) {
	page, _ := strconv.Atoi(c.DefaultQuery("page", "1"))
	limit, _ := strconv.Atoi(c.DefaultQuery("limit", "20"))
	search := c.Query("search")
	status := c.Query("status")

	apps, total, err := h.repo.GetAllJobApplications(page, limit, search, status)
	if err != nil {
		c.JSON(http.StatusInternalServerError, models.Response{
			Success: false,
			Message: "Failed to retrieve job applications",
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
		Message: "Job applications retrieved successfully",
		Data:    apps,
		Meta: models.PaginationMeta{
			CurrentPage: page,
			PerPage:     limit,
			TotalPages:  totalPages,
			TotalItems:  total,
		},
	})
}

func (h *JobHandler) UpdateJobApplication(c *gin.Context) {
	id, err := strconv.ParseUint(c.Param("id"), 10, 32)
	if err != nil {
		c.JSON(http.StatusBadRequest, models.Response{
			Success: false,
			Message: "Invalid application ID",
			Error:   err.Error(),
		})
		return
	}

	app, err := h.repo.GetJobApplicationByID(uint(id))
	if err != nil {
		c.JSON(http.StatusNotFound, models.Response{
			Success: false,
			Message: "Job application not found",
			Error:   err.Error(),
		})
		return
	}

	var req models.UpdateJobApplicationRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, models.Response{
			Success: false,
			Message: "Invalid request",
			Error:   err.Error(),
		})
		return
	}

	// Update fields
	if req.CompanyName != nil {
		app.CompanyName = *req.CompanyName
	}
	if req.Position != nil {
		app.Position = *req.Position
	}
	if req.Status != nil {
		app.Status = *req.Status
	}
	if req.Notes != nil {
		app.Notes = *req.Notes
	}
	// ... add other fields as needed

	if err := h.repo.UpdateJobApplication(app); err != nil {
		c.JSON(http.StatusInternalServerError, models.Response{
			Success: false,
			Message: "Failed to update job application",
			Error:   err.Error(),
		})
		return
	}

	c.JSON(http.StatusOK, models.Response{
		Success: true,
		Message: "Job application updated successfully",
		Data:    app,
	})
}

func (h *JobHandler) DeleteJobApplication(c *gin.Context) {
	id, err := strconv.ParseUint(c.Param("id"), 10, 32)
	if err != nil {
		c.JSON(http.StatusBadRequest, models.Response{
			Success: false,
			Message: "Invalid application ID",
			Error:   err.Error(),
		})
		return
	}

	if err := h.repo.DeleteJobApplication(uint(id)); err != nil {
		c.JSON(http.StatusInternalServerError, models.Response{
			Success: false,
			Message: "Failed to delete job application",
			Error:   err.Error(),
		})
		return
	}

	c.JSON(http.StatusOK, models.Response{
		Success: true,
		Message: "Job application deleted successfully",
	})
}

// Interview handlers
func (h *JobHandler) CreateInterview(c *gin.Context) {
	appID, err := strconv.ParseUint(c.Param("id"), 10, 32)
	if err != nil {
		c.JSON(http.StatusBadRequest, models.Response{
			Success: false,
			Message: "Invalid application ID",
			Error:   err.Error(),
		})
		return
	}

	var req models.CreateInterviewRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, models.Response{
			Success: false,
			Message: "Invalid request",
			Error:   err.Error(),
		})
		return
	}

	interview := &models.Interview{
		ApplicationID:       uint(appID),
		Round:               req.Round,
		InterviewType:       req.InterviewType,
		InterviewDate:       req.InterviewDate,
		InterviewerName:     req.InterviewerName,
		InterviewerPosition: req.InterviewerPosition,
		Location:            req.Location,
		Duration:            req.Duration,
		Notes:               req.Notes,
		Result:              "pending",
	}

	if err := h.repo.CreateInterview(interview); err != nil {
		c.JSON(http.StatusInternalServerError, models.Response{
			Success: false,
			Message: "Failed to create interview",
			Error:   err.Error(),
		})
		return
	}

	c.JSON(http.StatusCreated, models.Response{
		Success: true,
		Message: "Interview created successfully",
		Data:    interview,
	})
}

// Project handlers
func (h *JobHandler) CreateProject(c *gin.Context) {
	var req models.CreateProjectRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, models.Response{
			Success: false,
			Message: "Invalid request",
			Error:   err.Error(),
		})
		return
	}

	project := &models.Project{
		Name:           req.Name,
		Description:    req.Description,
		ClientName:     req.ClientName,
		ClientEmail:    req.ClientEmail,
		ClientPhone:    req.ClientPhone,
		ProjectType:    req.ProjectType,
		Status:         req.Status,
		Priority:       req.Priority,
		Tags:           req.Tags,
		ProjectValue:   req.ProjectValue,
		Currency:       req.Currency,
		PaymentTerms:   req.PaymentTerms,
		PaymentStatus:  req.PaymentStatus,
		InvoiceNumber:  req.InvoiceNumber,
		HourlyRate:     req.HourlyRate,
		EstimatedHours: req.EstimatedHours,
		StartDate:      req.StartDate,
		EndDate:        req.EndDate,
		Notes:          req.Notes,
	}

	if project.Currency == "" {
		project.Currency = "USD"
	}
	if project.PaymentStatus == "" {
		project.PaymentStatus = "unpaid"
	}

	if err := h.repo.CreateProject(project); err != nil {
		c.JSON(http.StatusInternalServerError, models.Response{
			Success: false,
			Message: "Failed to create project",
			Error:   err.Error(),
		})
		return
	}

	c.JSON(http.StatusCreated, models.Response{
		Success: true,
		Message: "Project created successfully",
		Data:    project,
	})
}

func (h *JobHandler) GetProject(c *gin.Context) {
	id, err := strconv.ParseUint(c.Param("id"), 10, 32)
	if err != nil {
		c.JSON(http.StatusBadRequest, models.Response{
			Success: false,
			Message: "Invalid project ID",
			Error:   err.Error(),
		})
		return
	}

	project, err := h.repo.GetProjectByID(uint(id))
	if err != nil {
		c.JSON(http.StatusNotFound, models.Response{
			Success: false,
			Message: "Project not found",
			Error:   err.Error(),
		})
		return
	}

	c.JSON(http.StatusOK, models.Response{
		Success: true,
		Message: "Project retrieved successfully",
		Data:    project,
	})
}

func (h *JobHandler) GetAllProjects(c *gin.Context) {
	page, _ := strconv.Atoi(c.DefaultQuery("page", "1"))
	limit, _ := strconv.Atoi(c.DefaultQuery("limit", "20"))
	search := c.Query("search")
	status := c.Query("status")

	projects, total, err := h.repo.GetAllProjects(page, limit, search, status)
	if err != nil {
		c.JSON(http.StatusInternalServerError, models.Response{
			Success: false,
			Message: "Failed to retrieve projects",
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
		Message: "Projects retrieved successfully",
		Data:    projects,
		Meta: models.PaginationMeta{
			CurrentPage: page,
			PerPage:     limit,
			TotalPages:  totalPages,
			TotalItems:  total,
		},
	})
}

func (h *JobHandler) UpdateProject(c *gin.Context) {
	id, err := strconv.ParseUint(c.Param("id"), 10, 32)
	if err != nil {
		c.JSON(http.StatusBadRequest, models.Response{
			Success: false,
			Message: "Invalid project ID",
			Error:   err.Error(),
		})
		return
	}

	project, err := h.repo.GetProjectByID(uint(id))
	if err != nil {
		c.JSON(http.StatusNotFound, models.Response{
			Success: false,
			Message: "Project not found",
			Error:   err.Error(),
		})
		return
	}

	var req models.UpdateProjectRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, models.Response{
			Success: false,
			Message: "Invalid request",
			Error:   err.Error(),
		})
		return
	}

	if req.Name != nil {
		project.Name = *req.Name
	}
	if req.Status != nil {
		project.Status = *req.Status
	}
	if req.ProgressPercent != nil {
		project.ProgressPercent = *req.ProgressPercent
	}
	if req.PaymentStatus != nil {
		project.PaymentStatus = *req.PaymentStatus
	}
	// ... add other fields

	if err := h.repo.UpdateProject(project); err != nil {
		c.JSON(http.StatusInternalServerError, models.Response{
			Success: false,
			Message: "Failed to update project",
			Error:   err.Error(),
		})
		return
	}

	c.JSON(http.StatusOK, models.Response{
		Success: true,
		Message: "Project updated successfully",
		Data:    project,
	})
}

func (h *JobHandler) DeleteProject(c *gin.Context) {
	id, err := strconv.ParseUint(c.Param("id"), 10, 32)
	if err != nil {
		c.JSON(http.StatusBadRequest, models.Response{
			Success: false,
			Message: "Invalid project ID",
			Error:   err.Error(),
		})
		return
	}

	if err := h.repo.DeleteProject(uint(id)); err != nil {
		c.JSON(http.StatusInternalServerError, models.Response{
			Success: false,
			Message: "Failed to delete project",
			Error:   err.Error(),
		})
		return
	}

	c.JSON(http.StatusOK, models.Response{
		Success: true,
		Message: "Project deleted successfully",
	})
}

// Project Task handlers
func (h *JobHandler) CreateProjectTask(c *gin.Context) {
	projectID, err := strconv.ParseUint(c.Param("id"), 10, 32)
	if err != nil {
		c.JSON(http.StatusBadRequest, models.Response{
			Success: false,
			Message: "Invalid project ID",
			Error:   err.Error(),
		})
		return
	}

	var req models.CreateProjectTaskRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, models.Response{
			Success: false,
			Message: "Invalid request",
			Error:   err.Error(),
		})
		return
	}

	task := &models.ProjectTask{
		ProjectID:      uint(projectID),
		Title:          req.Title,
		Description:    req.Description,
		Status:         req.Status,
		Priority:       req.Priority,
		EstimatedHours: req.EstimatedHours,
		AssignedTo:     req.AssignedTo,
		DueDate:        req.DueDate,
	}

	if task.Status == "" {
		task.Status = "todo"
	}

	if err := h.repo.CreateProjectTask(task); err != nil {
		c.JSON(http.StatusInternalServerError, models.Response{
			Success: false,
			Message: "Failed to create task",
			Error:   err.Error(),
		})
		return
	}

	c.JSON(http.StatusCreated, models.Response{
		Success: true,
		Message: "Task created successfully",
		Data:    task,
	})
}

func (h *JobHandler) GetProjectTasks(c *gin.Context) {
	projectID, err := strconv.ParseUint(c.Param("id"), 10, 32)
	if err != nil {
		c.JSON(http.StatusBadRequest, models.Response{
			Success: false,
			Message: "Invalid project ID",
			Error:   err.Error(),
		})
		return
	}

	tasks, err := h.repo.GetTasksByProjectID(uint(projectID))
	if err != nil {
		c.JSON(http.StatusInternalServerError, models.Response{
			Success: false,
			Message: "Failed to retrieve tasks",
			Error:   err.Error(),
		})
		return
	}

	c.JSON(http.StatusOK, models.Response{
		Success: true,
		Message: "Tasks retrieved successfully",
		Data:    tasks,
	})
}

// Stats
func (h *JobHandler) GetJobStats(c *gin.Context) {
	stats, err := h.repo.GetJobStats()
	if err != nil {
		c.JSON(http.StatusInternalServerError, models.Response{
			Success: false,
			Message: "Failed to retrieve job stats",
			Error:   err.Error(),
		})
		return
	}

	c.JSON(http.StatusOK, models.Response{
		Success: true,
		Message: "Job stats retrieved successfully",
		Data:    stats,
	})
}
