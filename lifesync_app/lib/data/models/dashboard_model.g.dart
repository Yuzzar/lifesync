// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DashboardStatsImpl _$$DashboardStatsImplFromJson(Map<String, dynamic> json) =>
    _$DashboardStatsImpl(
      habitStats:
          HabitStatsData.fromJson(json['habit_stats'] as Map<String, dynamic>),
      financeStats: FinanceStatsData.fromJson(
          json['finance_stats'] as Map<String, dynamic>),
      jobStats:
          JobStatsData.fromJson(json['job_stats'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DashboardStatsImplToJson(
        _$DashboardStatsImpl instance) =>
    <String, dynamic>{
      'habit_stats': instance.habitStats,
      'finance_stats': instance.financeStats,
      'job_stats': instance.jobStats,
    };

_$HabitStatsDataImpl _$$HabitStatsDataImplFromJson(Map<String, dynamic> json) =>
    _$HabitStatsDataImpl(
      totalHabits: (json['total_habits'] as num?)?.toInt() ?? 0,
      activeHabits: (json['active_habits'] as num?)?.toInt() ?? 0,
      completedToday: (json['completed_today'] as num?)?.toInt() ?? 0,
      todayCompletionRate:
          (json['today_completion_rate'] as num?)?.toDouble() ?? 0.0,
      weeklyCompletionRate:
          (json['weekly_completion_rate'] as num?)?.toDouble() ?? 0.0,
      bestStreak: (json['best_streak'] as num?)?.toInt() ?? 0,
      currentActiveStreak:
          (json['current_active_streak'] as num?)?.toInt() ?? 0,
      totalLogs: (json['total_logs'] as num?)?.toInt() ?? 0,
      completedLogs: (json['completed_logs'] as num?)?.toInt() ?? 0,
      completionRate: (json['completion_rate'] as num?)?.toDouble() ?? 0.0,
      currentStreak: (json['current_streak'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$HabitStatsDataImplToJson(
        _$HabitStatsDataImpl instance) =>
    <String, dynamic>{
      'total_habits': instance.totalHabits,
      'active_habits': instance.activeHabits,
      'completed_today': instance.completedToday,
      'today_completion_rate': instance.todayCompletionRate,
      'weekly_completion_rate': instance.weeklyCompletionRate,
      'best_streak': instance.bestStreak,
      'current_active_streak': instance.currentActiveStreak,
      'total_logs': instance.totalLogs,
      'completed_logs': instance.completedLogs,
      'completion_rate': instance.completionRate,
      'current_streak': instance.currentStreak,
    };

_$FinanceStatsDataImpl _$$FinanceStatsDataImplFromJson(
        Map<String, dynamic> json) =>
    _$FinanceStatsDataImpl(
      income: (json['total_income'] as num?)?.toDouble() ?? 0.0,
      expense: (json['total_expense'] as num?)?.toDouble() ?? 0.0,
      balance: (json['balance'] as num?)?.toDouble() ?? 0.0,
      transactionCount: (json['transaction_count'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$FinanceStatsDataImplToJson(
        _$FinanceStatsDataImpl instance) =>
    <String, dynamic>{
      'total_income': instance.income,
      'total_expense': instance.expense,
      'balance': instance.balance,
      'transaction_count': instance.transactionCount,
    };

_$JobStatsDataImpl _$$JobStatsDataImplFromJson(Map<String, dynamic> json) =>
    _$JobStatsDataImpl(
      totalApplications: (json['total_applications'] as num?)?.toInt() ?? 0,
      activeApplications: (json['active_applications'] as num?)?.toInt() ?? 0,
      interviews: (json['interviews'] as num?)?.toInt() ?? 0,
      totalProjects: (json['total_projects'] as num?)?.toInt() ?? 0,
      activeProjects: (json['active_projects'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$JobStatsDataImplToJson(_$JobStatsDataImpl instance) =>
    <String, dynamic>{
      'total_applications': instance.totalApplications,
      'active_applications': instance.activeApplications,
      'interviews': instance.interviews,
      'total_projects': instance.totalProjects,
      'active_projects': instance.activeProjects,
    };
