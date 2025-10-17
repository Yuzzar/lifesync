package models

// Response represents standard API response
type Response struct {
	Success bool        `json:"success"`
	Message string      `json:"message"`
	Data    interface{} `json:"data,omitempty"`
	Error   string      `json:"error,omitempty"`
}

// PaginationQuery for list queries
type PaginationQuery struct {
	Page     int    `form:"page,default=1"`
	Limit    int    `form:"limit,default=20"`
	Sort     string `form:"sort,default=created_at"`
	Order    string `form:"order,default=desc"`
	Search   string `form:"search"`
}

// PaginatedResponse for paginated results
type PaginatedResponse struct {
	Success bool        `json:"success"`
	Message string      `json:"message"`
	Data    interface{} `json:"data"`
	Meta    PaginationMeta `json:"meta"`
}

// PaginationMeta contains pagination metadata
type PaginationMeta struct {
	CurrentPage int   `json:"current_page"`
	PerPage     int   `json:"per_page"`
	TotalPages  int   `json:"total_pages"`
	TotalItems  int64 `json:"total_items"`
}

// DashboardStats represents overall dashboard statistics
type DashboardStats struct {
	HabitStats   HabitStats   `json:"habit_stats"`
	FinanceStats FinanceStats `json:"finance_stats"`
	JobStats     JobStats     `json:"job_stats"`
	QuickActions []QuickAction `json:"quick_actions"`
	UpcomingEvents []UpcomingEvent `json:"upcoming_events"`
}

// QuickAction for dashboard quick access
type QuickAction struct {
	Title string `json:"title"`
	Icon  string `json:"icon"`
	Route string `json:"route"`
	Count int    `json:"count,omitempty"`
}

// UpcomingEvent for dashboard calendar
type UpcomingEvent struct {
	ID    uint   `json:"id"`
	Type  string `json:"type"` // habit, payment, interview, deadline
	Title string `json:"title"`
	Date  string `json:"date"`
	Time  string `json:"time,omitempty"`
}
