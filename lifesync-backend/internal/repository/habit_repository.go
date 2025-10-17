package repository

import (
	"lifesync-backend/internal/models"
	"time"

	"gorm.io/gorm"
)

type HabitRepository struct {
	db *gorm.DB
}

func NewHabitRepository(db *gorm.DB) *HabitRepository {
	return &HabitRepository{db: db}
}

// CreateHabit creates a new habit
func (r *HabitRepository) CreateHabit(habit *models.Habit) error {
	return r.db.Create(habit).Error
}

// GetHabitByID retrieves a habit by ID
func (r *HabitRepository) GetHabitByID(id uint) (*models.Habit, error) {
	var habit models.Habit
	if err := r.db.First(&habit, id).Error; err != nil {
		return nil, err
	}
	return &habit, nil
}

// GetAllHabits retrieves all habits with pagination
func (r *HabitRepository) GetAllHabits(page, limit int, search string) ([]models.Habit, int64, error) {
	var habits []models.Habit
	var total int64

	query := r.db.Model(&models.Habit{})

	// Search filter
	if search != "" {
		query = query.Where("name LIKE ? OR description LIKE ? OR category LIKE ?",
			"%"+search+"%", "%"+search+"%", "%"+search+"%")
	}

	// Count total
	if err := query.Count(&total).Error; err != nil {
		return nil, 0, err
	}

	// Get paginated results
	offset := (page - 1) * limit
	if err := query.Order("created_at DESC").Offset(offset).Limit(limit).Find(&habits).Error; err != nil {
		return nil, 0, err
	}

	return habits, total, nil
}

// UpdateHabit updates a habit
func (r *HabitRepository) UpdateHabit(habit *models.Habit) error {
	return r.db.Save(habit).Error
}

// DeleteHabit deletes a habit
func (r *HabitRepository) DeleteHabit(id uint) error {
	return r.db.Delete(&models.Habit{}, id).Error
}

// CreateHabitLog creates a habit completion log
func (r *HabitRepository) CreateHabitLog(log *models.HabitLog) error {
	return r.db.Create(log).Error
}

// GetHabitLog retrieves habit log for specific date
func (r *HabitRepository) GetHabitLog(habitID uint, date string) (*models.HabitLog, error) {
	var log models.HabitLog
	err := r.db.Where("habit_id = ? AND date = ?", habitID, date).First(&log).Error
	if err != nil {
		return nil, err
	}
	return &log, nil
}

// UpdateHabitLog updates habit log
func (r *HabitRepository) UpdateHabitLog(log *models.HabitLog) error {
	return r.db.Save(log).Error
}

// GetHabitLogs retrieves all logs for a habit
func (r *HabitRepository) GetHabitLogs(habitID uint, startDate, endDate string) ([]models.HabitLog, error) {
	var logs []models.HabitLog
	query := r.db.Where("habit_id = ?", habitID)

	if startDate != "" {
		query = query.Where("date >= ?", startDate)
	}
	if endDate != "" {
		query = query.Where("date <= ?", endDate)
	}

	err := query.Order("date DESC").Find(&logs).Error
	return logs, err
}

// CalculateStreak calculates current and best streak
func (r *HabitRepository) CalculateStreak(habitID uint) (currentStreak, bestStreak int, err error) {
	var logs []models.HabitLog
	err = r.db.Where("habit_id = ? AND completed = ?", habitID, true).
		Order("date DESC").
		Find(&logs).Error

	if err != nil {
		return 0, 0, err
	}

	if len(logs) == 0 {
		return 0, 0, nil
	}

	// Calculate current streak
	today := time.Now().Format("2006-01-02")
	yesterday := time.Now().AddDate(0, 0, -1).Format("2006-01-02")

	// Check if today or yesterday has completion
	if logs[0].Date == today || logs[0].Date == yesterday {
		currentStreak = 1
		lastDate, _ := time.Parse("2006-01-02", logs[0].Date)

		for i := 1; i < len(logs); i++ {
			logDate, _ := time.Parse("2006-01-02", logs[i].Date)
			diff := lastDate.Sub(logDate).Hours() / 24

			if diff == 1 {
				currentStreak++
				lastDate = logDate
			} else {
				break
			}
		}
	}

	// Calculate best streak
	tempStreak := 1
	bestStreak = 1
	lastDate, _ := time.Parse("2006-01-02", logs[0].Date)

	for i := 1; i < len(logs); i++ {
		logDate, _ := time.Parse("2006-01-02", logs[i].Date)
		diff := lastDate.Sub(logDate).Hours() / 24

		if diff == 1 {
			tempStreak++
			if tempStreak > bestStreak {
				bestStreak = tempStreak
			}
		} else {
			tempStreak = 1
		}
		lastDate = logDate
	}

	return currentStreak, bestStreak, nil
}

// GetHabitStats retrieves habit statistics
func (r *HabitRepository) GetHabitStats() (*models.HabitStats, error) {
	var stats models.HabitStats
	today := time.Now().Format("2006-01-02")

	// Total habits
	r.db.Model(&models.Habit{}).Count(&stats.TotalHabits)

	// Active habits
	r.db.Model(&models.Habit{}).Where("is_active = ?", true).Count(&stats.ActiveHabits)

	// Completed today
	r.db.Model(&models.HabitLog{}).
		Joins("JOIN habits ON habits.id = habit_logs.habit_id").
		Where("habit_logs.date = ? AND habit_logs.completed = ? AND habits.is_active = ?", today, true, true).
		Count(&stats.CompletedToday)

	// Today completion rate
	var activeCount int64
	r.db.Model(&models.Habit{}).Where("is_active = ?", true).Count(&activeCount)
	if activeCount > 0 {
		stats.TodayCompletionRate = float64(stats.CompletedToday) / float64(activeCount) * 100
	}

	// Weekly completion rate
	weekStart := time.Now().AddDate(0, 0, -7).Format("2006-01-02")
	var weeklyCompleted int64
	r.db.Model(&models.HabitLog{}).
		Where("date >= ? AND completed = ?", weekStart, true).
		Count(&weeklyCompleted)

	var weeklyExpected int64 = activeCount * 7
	if weeklyExpected > 0 {
		stats.WeeklyCompletionRate = float64(weeklyCompleted) / float64(weeklyExpected) * 100
	}

	// Best streak across all habits
	var habits []models.Habit
	r.db.Where("is_active = ?", true).Find(&habits)
	for _, habit := range habits {
		if habit.BestStreak > stats.BestStreak {
			stats.BestStreak = habit.BestStreak
		}
		if habit.CurrentStreak > stats.CurrentActiveStreak {
			stats.CurrentActiveStreak = habit.CurrentStreak
		}
	}

	return &stats, nil
}
