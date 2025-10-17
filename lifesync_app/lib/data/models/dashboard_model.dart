import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_model.freezed.dart';
part 'dashboard_model.g.dart';

@freezed
class DashboardStats with _$DashboardStats {
  const factory DashboardStats({
    @JsonKey(name: 'habit_stats') required HabitStatsData habitStats,
    @JsonKey(name: 'finance_stats') required FinanceStatsData financeStats,
    @JsonKey(name: 'job_stats') required JobStatsData jobStats,
  }) = _DashboardStats;

  factory DashboardStats.fromJson(Map<String, dynamic> json) => 
      _$DashboardStatsFromJson(json);
}

@freezed
class HabitStatsData with _$HabitStatsData {
  const factory HabitStatsData({
    @JsonKey(name: 'total_habits') @Default(0) int totalHabits,
    @JsonKey(name: 'active_habits') @Default(0) int activeHabits,
    @JsonKey(name: 'completed_today') @Default(0) int completedToday,
    @JsonKey(name: 'today_completion_rate') @Default(0.0) double todayCompletionRate,
    @JsonKey(name: 'weekly_completion_rate') @Default(0.0) double weeklyCompletionRate,
    @JsonKey(name: 'best_streak') @Default(0) int bestStreak,
    @JsonKey(name: 'current_active_streak') @Default(0) int currentActiveStreak,
    // For UI compatibility
    @JsonKey(name: 'total_logs') @Default(0) int totalLogs,
    @JsonKey(name: 'completed_logs') @Default(0) int completedLogs,
    @JsonKey(name: 'completion_rate') @Default(0.0) double completionRate,
    @JsonKey(name: 'current_streak') @Default(0) int currentStreak,
  }) = _HabitStatsData;

  factory HabitStatsData.fromJson(Map<String, dynamic> json) => 
      _$HabitStatsDataFromJson(json);
}

@freezed
class FinanceStatsData with _$FinanceStatsData {
  const factory FinanceStatsData({
    @JsonKey(name: 'total_income') @Default(0.0) double income,
    @JsonKey(name: 'total_expense') @Default(0.0) double expense,
    @Default(0.0) double balance,
    @JsonKey(name: 'transaction_count') @Default(0) int transactionCount,
  }) = _FinanceStatsData;

  factory FinanceStatsData.fromJson(Map<String, dynamic> json) => 
      _$FinanceStatsDataFromJson(json);
}

@freezed
class JobStatsData with _$JobStatsData {
  const factory JobStatsData({
    @JsonKey(name: 'total_applications') @Default(0) int totalApplications,
    @JsonKey(name: 'active_applications') @Default(0) int activeApplications,
    @Default(0) int interviews,
    @JsonKey(name: 'total_projects') @Default(0) int totalProjects,
    @JsonKey(name: 'active_projects') @Default(0) int activeProjects,
  }) = _JobStatsData;

  factory JobStatsData.fromJson(Map<String, dynamic> json) => 
      _$JobStatsDataFromJson(json);
}
