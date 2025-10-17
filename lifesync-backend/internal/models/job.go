package models

import (
	"time"
)

// JobApplication represents a job application tracking
type JobApplication struct {
	ID              uint      `json:"id" gorm:"primaryKey"`
	CompanyName     string    `json:"company_name" gorm:"not null"`
	Position        string    `json:"position" gorm:"not null"`
	CompanyLogo     string    `json:"company_logo"`
	CompanyWebsite  string    `json:"company_website"`
	JobDescription  string    `json:"job_description"`
	Location        string    `json:"location"`
	WorkType        string    `json:"work_type"` // remote, onsite, hybrid
	SalaryMin       float64   `json:"salary_min"`
	SalaryMax       float64   `json:"salary_max"`
	Currency        string    `json:"currency" gorm:"default:USD"`
	Status          string    `json:"status" gorm:"not null;index"` // wishlist, applied, interview, technical_test, offering, accepted, rejected, archived
	Priority        int       `json:"priority" gorm:"default:0"`
	Platform        string    `json:"platform"` // LinkedIn, Jobstreet, etc
	JobURL          string    `json:"job_url"`
	AppliedDate     *time.Time `json:"applied_date"`
	CVVersion       string    `json:"cv_version"`
	CoverLetter     string    `json:"cover_letter"`
	ReferralName    string    `json:"referral_name"`
	ReferralContact string    `json:"referral_contact"`
	Notes           string    `json:"notes"`
	LastFollowUp    *time.Time `json:"last_follow_up"`
	NextFollowUp    *time.Time `json:"next_follow_up"`
	CreatedAt       time.Time `json:"created_at"`
	UpdatedAt       time.Time `json:"updated_at"`
	
	Interviews      []Interview `json:"interviews,omitempty" gorm:"foreignKey:ApplicationID"`
}

// Interview represents interview rounds for job application
type Interview struct {
	ID              uint      `json:"id" gorm:"primaryKey"`
	ApplicationID   uint      `json:"application_id" gorm:"not null;index"`
	Round           int       `json:"round" gorm:"not null"`
	InterviewType   string    `json:"interview_type"` // hr, technical, user, final
	InterviewDate   *time.Time `json:"interview_date"`
	InterviewerName string    `json:"interviewer_name"`
	InterviewerPosition string `json:"interviewer_position"`
	Location        string    `json:"location"` // zoom link or office address
	Duration        int       `json:"duration"` // in minutes
	Notes           string    `json:"notes"`
	QuestionsAsked  string    `json:"questions_asked"`
	Reflection      string    `json:"reflection"`
	Result          string    `json:"result"` // pending, passed, failed
	CreatedAt       time.Time `json:"created_at"`
	UpdatedAt       time.Time `json:"updated_at"`
}

// Project represents a project or freelance work
type Project struct {
	ID              uint      `json:"id" gorm:"primaryKey"`
	Name            string    `json:"name" gorm:"not null"`
	Description     string    `json:"description"`
	ClientName      string    `json:"client_name"`
	ClientEmail     string    `json:"client_email"`
	ClientPhone     string    `json:"client_phone"`
	ProjectType     string    `json:"project_type"` // freelance, side_project, commission
	Status          string    `json:"status" gorm:"not null;index"` // backlog, todo, in_progress, in_review, completed, on_hold
	Priority        int       `json:"priority" gorm:"default:0"`
	Tags            string    `json:"tags"` // comma-separated
	ProjectValue    float64   `json:"project_value"`
	Currency        string    `json:"currency" gorm:"default:USD"`
	PaymentTerms    string    `json:"payment_terms"` // per_hour, per_project, per_milestone
	PaymentStatus   string    `json:"payment_status" gorm:"default:unpaid"` // unpaid, partial, paid
	InvoiceNumber   string    `json:"invoice_number"`
	HourlyRate      float64   `json:"hourly_rate"`
	EstimatedHours  float64   `json:"estimated_hours"`
	ActualHours     float64   `json:"actual_hours"`
	ProgressPercent int       `json:"progress_percent" gorm:"default:0"`
	StartDate       *time.Time `json:"start_date"`
	EndDate         *time.Time `json:"end_date"`
	CompletedAt     *time.Time `json:"completed_at"`
	Notes           string    `json:"notes"`
	CreatedAt       time.Time `json:"created_at"`
	UpdatedAt       time.Time `json:"updated_at"`
	
	Tasks           []ProjectTask `json:"tasks,omitempty" gorm:"foreignKey:ProjectID"`
	Milestones      []Milestone   `json:"milestones,omitempty" gorm:"foreignKey:ProjectID"`
}

// ProjectTask represents tasks within a project
type ProjectTask struct {
	ID          uint      `json:"id" gorm:"primaryKey"`
	ProjectID   uint      `json:"project_id" gorm:"not null;index"`
	Title       string    `json:"title" gorm:"not null"`
	Description string    `json:"description"`
	Status      string    `json:"status" gorm:"default:todo"` // todo, in_progress, done
	Priority    int       `json:"priority" gorm:"default:0"`
	EstimatedHours float64 `json:"estimated_hours"`
	ActualHours float64 `json:"actual_hours"`
	AssignedTo  string    `json:"assigned_to"`
	DueDate     *time.Time `json:"due_date"`
	CompletedAt *time.Time `json:"completed_at"`
	CreatedAt   time.Time `json:"created_at"`
	UpdatedAt   time.Time `json:"updated_at"`
}

// Milestone represents project milestones
type Milestone struct {
	ID          uint      `json:"id" gorm:"primaryKey"`
	ProjectID   uint      `json:"project_id" gorm:"not null;index"`
	Name        string    `json:"name" gorm:"not null"`
	Description string    `json:"description"`
	DueDate     *time.Time `json:"due_date"`
	CompletedAt *time.Time `json:"completed_at"`
	PaymentAmount float64 `json:"payment_amount"`
	IsCompleted bool      `json:"is_completed" gorm:"default:false"`
	CreatedAt   time.Time `json:"created_at"`
	UpdatedAt   time.Time `json:"updated_at"`
}

// JobStats represents job tracking statistics
type JobStats struct {
	TotalApplications int64          `json:"total_applications"`
	ActiveApplications int64         `json:"active_applications"`
	InterviewsScheduled int64        `json:"interviews_scheduled"`
	OffersReceived    int64          `json:"offers_received"`
	TotalProjects     int64          `json:"total_projects"`
	ActiveProjects    int64          `json:"active_projects"`
	CompletedProjects int64          `json:"completed_projects"`
	TotalEarnings     float64        `json:"total_earnings"`
	PendingPayments   float64        `json:"pending_payments"`
	ApplicationsByStatus map[string]int `json:"applications_by_status"`
}

// Request DTOs
type CreateJobApplicationRequest struct {
	CompanyName     string  `json:"company_name" binding:"required"`
	Position        string  `json:"position" binding:"required"`
	CompanyLogo     string  `json:"company_logo"`
	CompanyWebsite  string  `json:"company_website"`
	JobDescription  string  `json:"job_description"`
	Location        string  `json:"location"`
	WorkType        string  `json:"work_type"`
	SalaryMin       float64 `json:"salary_min"`
	SalaryMax       float64 `json:"salary_max"`
	Currency        string  `json:"currency"`
	Status          string  `json:"status" binding:"required"`
	Priority        int     `json:"priority"`
	Platform        string  `json:"platform"`
	JobURL          string  `json:"job_url"`
	AppliedDate     *time.Time `json:"applied_date"`
	CVVersion       string  `json:"cv_version"`
	CoverLetter     string  `json:"cover_letter"`
	ReferralName    string  `json:"referral_name"`
	ReferralContact string  `json:"referral_contact"`
	Notes           string  `json:"notes"`
}

type UpdateJobApplicationRequest struct {
	CompanyName     *string    `json:"company_name"`
	Position        *string    `json:"position"`
	CompanyLogo     *string    `json:"company_logo"`
	CompanyWebsite  *string    `json:"company_website"`
	JobDescription  *string    `json:"job_description"`
	Location        *string    `json:"location"`
	WorkType        *string    `json:"work_type"`
	SalaryMin       *float64   `json:"salary_min"`
	SalaryMax       *float64   `json:"salary_max"`
	Currency        *string    `json:"currency"`
	Status          *string    `json:"status"`
	Priority        *int       `json:"priority"`
	Platform        *string    `json:"platform"`
	JobURL          *string    `json:"job_url"`
	AppliedDate     *time.Time `json:"applied_date"`
	CVVersion       *string    `json:"cv_version"`
	CoverLetter     *string    `json:"cover_letter"`
	ReferralName    *string    `json:"referral_name"`
	ReferralContact *string    `json:"referral_contact"`
	Notes           *string    `json:"notes"`
	LastFollowUp    *time.Time `json:"last_follow_up"`
	NextFollowUp    *time.Time `json:"next_follow_up"`
}

type CreateInterviewRequest struct {
	Round           int        `json:"round" binding:"required"`
	InterviewType   string     `json:"interview_type" binding:"required"`
	InterviewDate   *time.Time `json:"interview_date"`
	InterviewerName string     `json:"interviewer_name"`
	InterviewerPosition string `json:"interviewer_position"`
	Location        string     `json:"location"`
	Duration        int        `json:"duration"`
	Notes           string     `json:"notes"`
}

type CreateProjectRequest struct {
	Name            string     `json:"name" binding:"required"`
	Description     string     `json:"description"`
	ClientName      string     `json:"client_name"`
	ClientEmail     string     `json:"client_email"`
	ClientPhone     string     `json:"client_phone"`
	ProjectType     string     `json:"project_type"`
	Status          string     `json:"status" binding:"required"`
	Priority        int        `json:"priority"`
	Tags            string     `json:"tags"`
	ProjectValue    float64    `json:"project_value"`
	Currency        string     `json:"currency"`
	PaymentTerms    string     `json:"payment_terms"`
	PaymentStatus   string     `json:"payment_status"`
	InvoiceNumber   string     `json:"invoice_number"`
	HourlyRate      float64    `json:"hourly_rate"`
	EstimatedHours  float64    `json:"estimated_hours"`
	StartDate       *time.Time `json:"start_date"`
	EndDate         *time.Time `json:"end_date"`
	Notes           string     `json:"notes"`
}

type UpdateProjectRequest struct {
	Name            *string    `json:"name"`
	Description     *string    `json:"description"`
	ClientName      *string    `json:"client_name"`
	ClientEmail     *string    `json:"client_email"`
	ClientPhone     *string    `json:"client_phone"`
	ProjectType     *string    `json:"project_type"`
	Status          *string    `json:"status"`
	Priority        *int       `json:"priority"`
	Tags            *string    `json:"tags"`
	ProjectValue    *float64   `json:"project_value"`
	Currency        *string    `json:"currency"`
	PaymentTerms    *string    `json:"payment_terms"`
	PaymentStatus   *string    `json:"payment_status"`
	InvoiceNumber   *string    `json:"invoice_number"`
	HourlyRate      *float64   `json:"hourly_rate"`
	EstimatedHours  *float64   `json:"estimated_hours"`
	ActualHours     *float64   `json:"actual_hours"`
	ProgressPercent *int       `json:"progress_percent"`
	StartDate       *time.Time `json:"start_date"`
	EndDate         *time.Time `json:"end_date"`
	CompletedAt     *time.Time `json:"completed_at"`
	Notes           *string    `json:"notes"`
}

type CreateProjectTaskRequest struct {
	Title       string     `json:"title" binding:"required"`
	Description string     `json:"description"`
	Status      string     `json:"status"`
	Priority    int        `json:"priority"`
	EstimatedHours float64 `json:"estimated_hours"`
	AssignedTo  string     `json:"assigned_to"`
	DueDate     *time.Time `json:"due_date"`
}
