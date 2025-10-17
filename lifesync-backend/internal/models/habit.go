package models

import (
	"time"
)

// Habit represents a habit that user wants to track
type Habit struct {
	ID          uint      `json:"id" gorm:"primaryKey"`
	Name        string    `json:"name" gorm:"not null" binding:"required"`
	Description string    `json:"description"`
	Category    string    `json:"category" gorm:"not null"`
	Color       string    `json:"color" gorm:"default:#2563eb"`
	Icon        string    `json:"icon"`
	Frequency   string    `json:"frequency" gorm:"default:daily"` // daily, weekly
	TargetDays  string    `json:"target_days"`                    // for weekly: "Mon,Wed,Fri"
	ReminderTime string   `json:"reminder_time"`
	IsActive    bool      `json:"is_active" gorm:"default:true"`
	CurrentStreak int     `json:"current_streak" gorm:"default:0"`
	BestStreak  int       `json:"best_streak" gorm:"default:0"`
	TotalCompleted int    `json:"total_completed" gorm:"default:0"`
	CreatedAt   time.Time `json:"created_at"`
	UpdatedAt   time.Time `json:"updated_at"`
}

// HabitLog represents a completion log for a habit
type HabitLog struct {
	ID        uint      `json:"id" gorm:"primaryKey"`
	HabitID   uint      `json:"habit_id" gorm:"not null;index"`
	Date      string    `json:"date" gorm:"not null;index"` // format: YYYY-MM-DD
	Completed bool      `json:"completed" gorm:"default:true"`
	Notes     string    `json:"notes"`
	CreatedAt time.Time `json:"created_at"`
	UpdatedAt time.Time `json:"updated_at"`
	
	Habit     Habit     `json:"habit,omitempty" gorm:"foreignKey:HabitID"`
}

// HabitStats represents statistics for habits
type HabitStats struct {
	TotalHabits       int64   `json:"total_habits"`
	ActiveHabits      int64   `json:"active_habits"`
	CompletedToday    int64   `json:"completed_today"`
	TodayCompletionRate float64 `json:"today_completion_rate"`
	WeeklyCompletionRate float64 `json:"weekly_completion_rate"`
	BestStreak        int     `json:"best_streak"`
	CurrentActiveStreak int   `json:"current_active_streak"`
}

// CreateHabitRequest for creating new habit
type CreateHabitRequest struct {
	Name         string `json:"name" binding:"required"`
	Description  string `json:"description"`
	Category     string `json:"category" binding:"required"`
	Color        string `json:"color"`
	Icon         string `json:"icon"`
	Frequency    string `json:"frequency"`
	TargetDays   string `json:"target_days"`
	ReminderTime string `json:"reminder_time"`
}

// UpdateHabitRequest for updating habit
type UpdateHabitRequest struct {
	Name         *string `json:"name"`
	Description  *string `json:"description"`
	Category     *string `json:"category"`
	Color        *string `json:"color"`
	Icon         *string `json:"icon"`
	Frequency    *string `json:"frequency"`
	TargetDays   *string `json:"target_days"`
	ReminderTime *string `json:"reminder_time"`
	IsActive     *bool   `json:"is_active"`
}

// CheckHabitRequest for marking habit as complete/incomplete
type CheckHabitRequest struct {
	Date      string `json:"date" binding:"required"`
	Completed bool   `json:"completed"`
	Notes     string `json:"notes"`
}
