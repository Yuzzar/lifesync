package repository

import (
	"lifesync-backend/internal/models"

	"gorm.io/gorm"
)

type JobRepository struct {
	db *gorm.DB
}

func NewJobRepository(db *gorm.DB) *JobRepository {
	return &JobRepository{db: db}
}

// Job Application methods
func (r *JobRepository) CreateJobApplication(app *models.JobApplication) error {
	return r.db.Create(app).Error
}

func (r *JobRepository) GetJobApplicationByID(id uint) (*models.JobApplication, error) {
	var app models.JobApplication
	err := r.db.Preload("Interviews").First(&app, id).Error
	return &app, err
}

func (r *JobRepository) GetAllJobApplications(page, limit int, search, status string) ([]models.JobApplication, int64, error) {
	var applications []models.JobApplication
	var total int64

	query := r.db.Model(&models.JobApplication{}).Preload("Interviews")

	// Filters
	if search != "" {
		query = query.Where("company_name LIKE ? OR position LIKE ?", "%"+search+"%", "%"+search+"%")
	}
	if status != "" && status != "all" {
		query = query.Where("status = ?", status)
	}

	// Count total
	if err := query.Count(&total).Error; err != nil {
		return nil, 0, err
	}

	// Get paginated results
	offset := (page - 1) * limit
	err := query.Order("created_at DESC").Offset(offset).Limit(limit).Find(&applications).Error
	return applications, total, err
}

func (r *JobRepository) UpdateJobApplication(app *models.JobApplication) error {
	return r.db.Save(app).Error
}

func (r *JobRepository) DeleteJobApplication(id uint) error {
	// Delete associated interviews first
	r.db.Where("application_id = ?", id).Delete(&models.Interview{})
	return r.db.Delete(&models.JobApplication{}, id).Error
}

// Interview methods
func (r *JobRepository) CreateInterview(interview *models.Interview) error {
	return r.db.Create(interview).Error
}

func (r *JobRepository) GetInterviewsByApplicationID(applicationID uint) ([]models.Interview, error) {
	var interviews []models.Interview
	err := r.db.Where("application_id = ?", applicationID).Order("round ASC").Find(&interviews).Error
	return interviews, err
}

func (r *JobRepository) UpdateInterview(interview *models.Interview) error {
	return r.db.Save(interview).Error
}

func (r *JobRepository) DeleteInterview(id uint) error {
	return r.db.Delete(&models.Interview{}, id).Error
}

// Project methods
func (r *JobRepository) CreateProject(project *models.Project) error {
	return r.db.Create(project).Error
}

func (r *JobRepository) GetProjectByID(id uint) (*models.Project, error) {
	var project models.Project
	err := r.db.Preload("Tasks").Preload("Milestones").First(&project, id).Error
	return &project, err
}

func (r *JobRepository) GetAllProjects(page, limit int, search, status string) ([]models.Project, int64, error) {
	var projects []models.Project
	var total int64

	query := r.db.Model(&models.Project{}).Preload("Tasks").Preload("Milestones")

	// Filters
	if search != "" {
		query = query.Where("name LIKE ? OR client_name LIKE ?", "%"+search+"%", "%"+search+"%")
	}
	if status != "" && status != "all" {
		query = query.Where("status = ?", status)
	}

	// Count total
	if err := query.Count(&total).Error; err != nil {
		return nil, 0, err
	}

	// Get paginated results
	offset := (page - 1) * limit
	err := query.Order("created_at DESC").Offset(offset).Limit(limit).Find(&projects).Error
	return projects, total, err
}

func (r *JobRepository) UpdateProject(project *models.Project) error {
	return r.db.Save(project).Error
}

func (r *JobRepository) DeleteProject(id uint) error {
	// Delete associated tasks and milestones
	r.db.Where("project_id = ?", id).Delete(&models.ProjectTask{})
	r.db.Where("project_id = ?", id).Delete(&models.Milestone{})
	return r.db.Delete(&models.Project{}, id).Error
}

// Project Task methods
func (r *JobRepository) CreateProjectTask(task *models.ProjectTask) error {
	return r.db.Create(task).Error
}

func (r *JobRepository) GetTasksByProjectID(projectID uint) ([]models.ProjectTask, error) {
	var tasks []models.ProjectTask
	err := r.db.Where("project_id = ?", projectID).Order("created_at DESC").Find(&tasks).Error
	return tasks, err
}

func (r *JobRepository) UpdateProjectTask(task *models.ProjectTask) error {
	return r.db.Save(task).Error
}

func (r *JobRepository) DeleteProjectTask(id uint) error {
	return r.db.Delete(&models.ProjectTask{}, id).Error
}

// Milestone methods
func (r *JobRepository) CreateMilestone(milestone *models.Milestone) error {
	return r.db.Create(milestone).Error
}

func (r *JobRepository) GetMilestonesByProjectID(projectID uint) ([]models.Milestone, error) {
	var milestones []models.Milestone
	err := r.db.Where("project_id = ?", projectID).Order("due_date ASC").Find(&milestones).Error
	return milestones, err
}

func (r *JobRepository) UpdateMilestone(milestone *models.Milestone) error {
	return r.db.Save(milestone).Error
}

func (r *JobRepository) DeleteMilestone(id uint) error {
	return r.db.Delete(&models.Milestone{}, id).Error
}

// Job Stats methods
func (r *JobRepository) GetJobStats() (*models.JobStats, error) {
	var stats models.JobStats

	// Total applications
	r.db.Model(&models.JobApplication{}).Count(&stats.TotalApplications)

	// Active applications (not archived, accepted, or rejected)
	r.db.Model(&models.JobApplication{}).
		Where("status NOT IN ?", []string{"archived", "accepted", "rejected"}).
		Count(&stats.ActiveApplications)

	// Interviews scheduled
	r.db.Model(&models.Interview{}).
		Where("result = ? OR result = ?", "", "pending").
		Count(&stats.InterviewsScheduled)

	// Offers received
	r.db.Model(&models.JobApplication{}).
		Where("status = ?", "offering").
		Count(&stats.OffersReceived)

	// Project stats
	r.db.Model(&models.Project{}).Count(&stats.TotalProjects)

	r.db.Model(&models.Project{}).
		Where("status IN ?", []string{"todo", "in_progress", "in_review"}).
		Count(&stats.ActiveProjects)

	r.db.Model(&models.Project{}).
		Where("status = ?", "completed").
		Count(&stats.CompletedProjects)

	// Total earnings from completed projects
	r.db.Model(&models.Project{}).
		Where("payment_status = ?", "paid").
		Select("COALESCE(SUM(project_value), 0)").
		Scan(&stats.TotalEarnings)

	// Pending payments
	r.db.Model(&models.Project{}).
		Where("payment_status IN ?", []string{"unpaid", "partial"}).
		Select("COALESCE(SUM(project_value), 0)").
		Scan(&stats.PendingPayments)

	// Applications by status
	stats.ApplicationsByStatus = make(map[string]int)
	var statusCounts []struct {
		Status string
		Count  int
	}
	r.db.Model(&models.JobApplication{}).
		Select("status, COUNT(*) as count").
		Group("status").
		Scan(&statusCounts)

	for _, sc := range statusCounts {
		stats.ApplicationsByStatus[sc.Status] = sc.Count
	}

	return &stats, nil
}
