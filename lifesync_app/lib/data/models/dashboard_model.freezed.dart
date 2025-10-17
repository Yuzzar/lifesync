// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DashboardStats _$DashboardStatsFromJson(Map<String, dynamic> json) {
  return _DashboardStats.fromJson(json);
}

/// @nodoc
mixin _$DashboardStats {
  @JsonKey(name: 'habit_stats')
  HabitStatsData get habitStats => throw _privateConstructorUsedError;
  @JsonKey(name: 'finance_stats')
  FinanceStatsData get financeStats => throw _privateConstructorUsedError;
  @JsonKey(name: 'job_stats')
  JobStatsData get jobStats => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DashboardStatsCopyWith<DashboardStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardStatsCopyWith<$Res> {
  factory $DashboardStatsCopyWith(
          DashboardStats value, $Res Function(DashboardStats) then) =
      _$DashboardStatsCopyWithImpl<$Res, DashboardStats>;
  @useResult
  $Res call(
      {@JsonKey(name: 'habit_stats') HabitStatsData habitStats,
      @JsonKey(name: 'finance_stats') FinanceStatsData financeStats,
      @JsonKey(name: 'job_stats') JobStatsData jobStats});

  $HabitStatsDataCopyWith<$Res> get habitStats;
  $FinanceStatsDataCopyWith<$Res> get financeStats;
  $JobStatsDataCopyWith<$Res> get jobStats;
}

/// @nodoc
class _$DashboardStatsCopyWithImpl<$Res, $Val extends DashboardStats>
    implements $DashboardStatsCopyWith<$Res> {
  _$DashboardStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? habitStats = null,
    Object? financeStats = null,
    Object? jobStats = null,
  }) {
    return _then(_value.copyWith(
      habitStats: null == habitStats
          ? _value.habitStats
          : habitStats // ignore: cast_nullable_to_non_nullable
              as HabitStatsData,
      financeStats: null == financeStats
          ? _value.financeStats
          : financeStats // ignore: cast_nullable_to_non_nullable
              as FinanceStatsData,
      jobStats: null == jobStats
          ? _value.jobStats
          : jobStats // ignore: cast_nullable_to_non_nullable
              as JobStatsData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HabitStatsDataCopyWith<$Res> get habitStats {
    return $HabitStatsDataCopyWith<$Res>(_value.habitStats, (value) {
      return _then(_value.copyWith(habitStats: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FinanceStatsDataCopyWith<$Res> get financeStats {
    return $FinanceStatsDataCopyWith<$Res>(_value.financeStats, (value) {
      return _then(_value.copyWith(financeStats: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $JobStatsDataCopyWith<$Res> get jobStats {
    return $JobStatsDataCopyWith<$Res>(_value.jobStats, (value) {
      return _then(_value.copyWith(jobStats: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DashboardStatsImplCopyWith<$Res>
    implements $DashboardStatsCopyWith<$Res> {
  factory _$$DashboardStatsImplCopyWith(_$DashboardStatsImpl value,
          $Res Function(_$DashboardStatsImpl) then) =
      __$$DashboardStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'habit_stats') HabitStatsData habitStats,
      @JsonKey(name: 'finance_stats') FinanceStatsData financeStats,
      @JsonKey(name: 'job_stats') JobStatsData jobStats});

  @override
  $HabitStatsDataCopyWith<$Res> get habitStats;
  @override
  $FinanceStatsDataCopyWith<$Res> get financeStats;
  @override
  $JobStatsDataCopyWith<$Res> get jobStats;
}

/// @nodoc
class __$$DashboardStatsImplCopyWithImpl<$Res>
    extends _$DashboardStatsCopyWithImpl<$Res, _$DashboardStatsImpl>
    implements _$$DashboardStatsImplCopyWith<$Res> {
  __$$DashboardStatsImplCopyWithImpl(
      _$DashboardStatsImpl _value, $Res Function(_$DashboardStatsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? habitStats = null,
    Object? financeStats = null,
    Object? jobStats = null,
  }) {
    return _then(_$DashboardStatsImpl(
      habitStats: null == habitStats
          ? _value.habitStats
          : habitStats // ignore: cast_nullable_to_non_nullable
              as HabitStatsData,
      financeStats: null == financeStats
          ? _value.financeStats
          : financeStats // ignore: cast_nullable_to_non_nullable
              as FinanceStatsData,
      jobStats: null == jobStats
          ? _value.jobStats
          : jobStats // ignore: cast_nullable_to_non_nullable
              as JobStatsData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DashboardStatsImpl implements _DashboardStats {
  const _$DashboardStatsImpl(
      {@JsonKey(name: 'habit_stats') required this.habitStats,
      @JsonKey(name: 'finance_stats') required this.financeStats,
      @JsonKey(name: 'job_stats') required this.jobStats});

  factory _$DashboardStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DashboardStatsImplFromJson(json);

  @override
  @JsonKey(name: 'habit_stats')
  final HabitStatsData habitStats;
  @override
  @JsonKey(name: 'finance_stats')
  final FinanceStatsData financeStats;
  @override
  @JsonKey(name: 'job_stats')
  final JobStatsData jobStats;

  @override
  String toString() {
    return 'DashboardStats(habitStats: $habitStats, financeStats: $financeStats, jobStats: $jobStats)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardStatsImpl &&
            (identical(other.habitStats, habitStats) ||
                other.habitStats == habitStats) &&
            (identical(other.financeStats, financeStats) ||
                other.financeStats == financeStats) &&
            (identical(other.jobStats, jobStats) ||
                other.jobStats == jobStats));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, habitStats, financeStats, jobStats);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardStatsImplCopyWith<_$DashboardStatsImpl> get copyWith =>
      __$$DashboardStatsImplCopyWithImpl<_$DashboardStatsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DashboardStatsImplToJson(
      this,
    );
  }
}

abstract class _DashboardStats implements DashboardStats {
  const factory _DashboardStats(
      {@JsonKey(name: 'habit_stats') required final HabitStatsData habitStats,
      @JsonKey(name: 'finance_stats')
      required final FinanceStatsData financeStats,
      @JsonKey(name: 'job_stats')
      required final JobStatsData jobStats}) = _$DashboardStatsImpl;

  factory _DashboardStats.fromJson(Map<String, dynamic> json) =
      _$DashboardStatsImpl.fromJson;

  @override
  @JsonKey(name: 'habit_stats')
  HabitStatsData get habitStats;
  @override
  @JsonKey(name: 'finance_stats')
  FinanceStatsData get financeStats;
  @override
  @JsonKey(name: 'job_stats')
  JobStatsData get jobStats;
  @override
  @JsonKey(ignore: true)
  _$$DashboardStatsImplCopyWith<_$DashboardStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HabitStatsData _$HabitStatsDataFromJson(Map<String, dynamic> json) {
  return _HabitStatsData.fromJson(json);
}

/// @nodoc
mixin _$HabitStatsData {
  @JsonKey(name: 'total_habits')
  int get totalHabits => throw _privateConstructorUsedError;
  @JsonKey(name: 'active_habits')
  int get activeHabits => throw _privateConstructorUsedError;
  @JsonKey(name: 'completed_today')
  int get completedToday => throw _privateConstructorUsedError;
  @JsonKey(name: 'today_completion_rate')
  double get todayCompletionRate => throw _privateConstructorUsedError;
  @JsonKey(name: 'weekly_completion_rate')
  double get weeklyCompletionRate => throw _privateConstructorUsedError;
  @JsonKey(name: 'best_streak')
  int get bestStreak => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_active_streak')
  int get currentActiveStreak =>
      throw _privateConstructorUsedError; // For UI compatibility
  @JsonKey(name: 'total_logs')
  int get totalLogs => throw _privateConstructorUsedError;
  @JsonKey(name: 'completed_logs')
  int get completedLogs => throw _privateConstructorUsedError;
  @JsonKey(name: 'completion_rate')
  double get completionRate => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_streak')
  int get currentStreak => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HabitStatsDataCopyWith<HabitStatsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HabitStatsDataCopyWith<$Res> {
  factory $HabitStatsDataCopyWith(
          HabitStatsData value, $Res Function(HabitStatsData) then) =
      _$HabitStatsDataCopyWithImpl<$Res, HabitStatsData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'total_habits') int totalHabits,
      @JsonKey(name: 'active_habits') int activeHabits,
      @JsonKey(name: 'completed_today') int completedToday,
      @JsonKey(name: 'today_completion_rate') double todayCompletionRate,
      @JsonKey(name: 'weekly_completion_rate') double weeklyCompletionRate,
      @JsonKey(name: 'best_streak') int bestStreak,
      @JsonKey(name: 'current_active_streak') int currentActiveStreak,
      @JsonKey(name: 'total_logs') int totalLogs,
      @JsonKey(name: 'completed_logs') int completedLogs,
      @JsonKey(name: 'completion_rate') double completionRate,
      @JsonKey(name: 'current_streak') int currentStreak});
}

/// @nodoc
class _$HabitStatsDataCopyWithImpl<$Res, $Val extends HabitStatsData>
    implements $HabitStatsDataCopyWith<$Res> {
  _$HabitStatsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalHabits = null,
    Object? activeHabits = null,
    Object? completedToday = null,
    Object? todayCompletionRate = null,
    Object? weeklyCompletionRate = null,
    Object? bestStreak = null,
    Object? currentActiveStreak = null,
    Object? totalLogs = null,
    Object? completedLogs = null,
    Object? completionRate = null,
    Object? currentStreak = null,
  }) {
    return _then(_value.copyWith(
      totalHabits: null == totalHabits
          ? _value.totalHabits
          : totalHabits // ignore: cast_nullable_to_non_nullable
              as int,
      activeHabits: null == activeHabits
          ? _value.activeHabits
          : activeHabits // ignore: cast_nullable_to_non_nullable
              as int,
      completedToday: null == completedToday
          ? _value.completedToday
          : completedToday // ignore: cast_nullable_to_non_nullable
              as int,
      todayCompletionRate: null == todayCompletionRate
          ? _value.todayCompletionRate
          : todayCompletionRate // ignore: cast_nullable_to_non_nullable
              as double,
      weeklyCompletionRate: null == weeklyCompletionRate
          ? _value.weeklyCompletionRate
          : weeklyCompletionRate // ignore: cast_nullable_to_non_nullable
              as double,
      bestStreak: null == bestStreak
          ? _value.bestStreak
          : bestStreak // ignore: cast_nullable_to_non_nullable
              as int,
      currentActiveStreak: null == currentActiveStreak
          ? _value.currentActiveStreak
          : currentActiveStreak // ignore: cast_nullable_to_non_nullable
              as int,
      totalLogs: null == totalLogs
          ? _value.totalLogs
          : totalLogs // ignore: cast_nullable_to_non_nullable
              as int,
      completedLogs: null == completedLogs
          ? _value.completedLogs
          : completedLogs // ignore: cast_nullable_to_non_nullable
              as int,
      completionRate: null == completionRate
          ? _value.completionRate
          : completionRate // ignore: cast_nullable_to_non_nullable
              as double,
      currentStreak: null == currentStreak
          ? _value.currentStreak
          : currentStreak // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HabitStatsDataImplCopyWith<$Res>
    implements $HabitStatsDataCopyWith<$Res> {
  factory _$$HabitStatsDataImplCopyWith(_$HabitStatsDataImpl value,
          $Res Function(_$HabitStatsDataImpl) then) =
      __$$HabitStatsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total_habits') int totalHabits,
      @JsonKey(name: 'active_habits') int activeHabits,
      @JsonKey(name: 'completed_today') int completedToday,
      @JsonKey(name: 'today_completion_rate') double todayCompletionRate,
      @JsonKey(name: 'weekly_completion_rate') double weeklyCompletionRate,
      @JsonKey(name: 'best_streak') int bestStreak,
      @JsonKey(name: 'current_active_streak') int currentActiveStreak,
      @JsonKey(name: 'total_logs') int totalLogs,
      @JsonKey(name: 'completed_logs') int completedLogs,
      @JsonKey(name: 'completion_rate') double completionRate,
      @JsonKey(name: 'current_streak') int currentStreak});
}

/// @nodoc
class __$$HabitStatsDataImplCopyWithImpl<$Res>
    extends _$HabitStatsDataCopyWithImpl<$Res, _$HabitStatsDataImpl>
    implements _$$HabitStatsDataImplCopyWith<$Res> {
  __$$HabitStatsDataImplCopyWithImpl(
      _$HabitStatsDataImpl _value, $Res Function(_$HabitStatsDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalHabits = null,
    Object? activeHabits = null,
    Object? completedToday = null,
    Object? todayCompletionRate = null,
    Object? weeklyCompletionRate = null,
    Object? bestStreak = null,
    Object? currentActiveStreak = null,
    Object? totalLogs = null,
    Object? completedLogs = null,
    Object? completionRate = null,
    Object? currentStreak = null,
  }) {
    return _then(_$HabitStatsDataImpl(
      totalHabits: null == totalHabits
          ? _value.totalHabits
          : totalHabits // ignore: cast_nullable_to_non_nullable
              as int,
      activeHabits: null == activeHabits
          ? _value.activeHabits
          : activeHabits // ignore: cast_nullable_to_non_nullable
              as int,
      completedToday: null == completedToday
          ? _value.completedToday
          : completedToday // ignore: cast_nullable_to_non_nullable
              as int,
      todayCompletionRate: null == todayCompletionRate
          ? _value.todayCompletionRate
          : todayCompletionRate // ignore: cast_nullable_to_non_nullable
              as double,
      weeklyCompletionRate: null == weeklyCompletionRate
          ? _value.weeklyCompletionRate
          : weeklyCompletionRate // ignore: cast_nullable_to_non_nullable
              as double,
      bestStreak: null == bestStreak
          ? _value.bestStreak
          : bestStreak // ignore: cast_nullable_to_non_nullable
              as int,
      currentActiveStreak: null == currentActiveStreak
          ? _value.currentActiveStreak
          : currentActiveStreak // ignore: cast_nullable_to_non_nullable
              as int,
      totalLogs: null == totalLogs
          ? _value.totalLogs
          : totalLogs // ignore: cast_nullable_to_non_nullable
              as int,
      completedLogs: null == completedLogs
          ? _value.completedLogs
          : completedLogs // ignore: cast_nullable_to_non_nullable
              as int,
      completionRate: null == completionRate
          ? _value.completionRate
          : completionRate // ignore: cast_nullable_to_non_nullable
              as double,
      currentStreak: null == currentStreak
          ? _value.currentStreak
          : currentStreak // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HabitStatsDataImpl implements _HabitStatsData {
  const _$HabitStatsDataImpl(
      {@JsonKey(name: 'total_habits') this.totalHabits = 0,
      @JsonKey(name: 'active_habits') this.activeHabits = 0,
      @JsonKey(name: 'completed_today') this.completedToday = 0,
      @JsonKey(name: 'today_completion_rate') this.todayCompletionRate = 0.0,
      @JsonKey(name: 'weekly_completion_rate') this.weeklyCompletionRate = 0.0,
      @JsonKey(name: 'best_streak') this.bestStreak = 0,
      @JsonKey(name: 'current_active_streak') this.currentActiveStreak = 0,
      @JsonKey(name: 'total_logs') this.totalLogs = 0,
      @JsonKey(name: 'completed_logs') this.completedLogs = 0,
      @JsonKey(name: 'completion_rate') this.completionRate = 0.0,
      @JsonKey(name: 'current_streak') this.currentStreak = 0});

  factory _$HabitStatsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$HabitStatsDataImplFromJson(json);

  @override
  @JsonKey(name: 'total_habits')
  final int totalHabits;
  @override
  @JsonKey(name: 'active_habits')
  final int activeHabits;
  @override
  @JsonKey(name: 'completed_today')
  final int completedToday;
  @override
  @JsonKey(name: 'today_completion_rate')
  final double todayCompletionRate;
  @override
  @JsonKey(name: 'weekly_completion_rate')
  final double weeklyCompletionRate;
  @override
  @JsonKey(name: 'best_streak')
  final int bestStreak;
  @override
  @JsonKey(name: 'current_active_streak')
  final int currentActiveStreak;
// For UI compatibility
  @override
  @JsonKey(name: 'total_logs')
  final int totalLogs;
  @override
  @JsonKey(name: 'completed_logs')
  final int completedLogs;
  @override
  @JsonKey(name: 'completion_rate')
  final double completionRate;
  @override
  @JsonKey(name: 'current_streak')
  final int currentStreak;

  @override
  String toString() {
    return 'HabitStatsData(totalHabits: $totalHabits, activeHabits: $activeHabits, completedToday: $completedToday, todayCompletionRate: $todayCompletionRate, weeklyCompletionRate: $weeklyCompletionRate, bestStreak: $bestStreak, currentActiveStreak: $currentActiveStreak, totalLogs: $totalLogs, completedLogs: $completedLogs, completionRate: $completionRate, currentStreak: $currentStreak)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HabitStatsDataImpl &&
            (identical(other.totalHabits, totalHabits) ||
                other.totalHabits == totalHabits) &&
            (identical(other.activeHabits, activeHabits) ||
                other.activeHabits == activeHabits) &&
            (identical(other.completedToday, completedToday) ||
                other.completedToday == completedToday) &&
            (identical(other.todayCompletionRate, todayCompletionRate) ||
                other.todayCompletionRate == todayCompletionRate) &&
            (identical(other.weeklyCompletionRate, weeklyCompletionRate) ||
                other.weeklyCompletionRate == weeklyCompletionRate) &&
            (identical(other.bestStreak, bestStreak) ||
                other.bestStreak == bestStreak) &&
            (identical(other.currentActiveStreak, currentActiveStreak) ||
                other.currentActiveStreak == currentActiveStreak) &&
            (identical(other.totalLogs, totalLogs) ||
                other.totalLogs == totalLogs) &&
            (identical(other.completedLogs, completedLogs) ||
                other.completedLogs == completedLogs) &&
            (identical(other.completionRate, completionRate) ||
                other.completionRate == completionRate) &&
            (identical(other.currentStreak, currentStreak) ||
                other.currentStreak == currentStreak));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      totalHabits,
      activeHabits,
      completedToday,
      todayCompletionRate,
      weeklyCompletionRate,
      bestStreak,
      currentActiveStreak,
      totalLogs,
      completedLogs,
      completionRate,
      currentStreak);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HabitStatsDataImplCopyWith<_$HabitStatsDataImpl> get copyWith =>
      __$$HabitStatsDataImplCopyWithImpl<_$HabitStatsDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HabitStatsDataImplToJson(
      this,
    );
  }
}

abstract class _HabitStatsData implements HabitStatsData {
  const factory _HabitStatsData(
      {@JsonKey(name: 'total_habits') final int totalHabits,
      @JsonKey(name: 'active_habits') final int activeHabits,
      @JsonKey(name: 'completed_today') final int completedToday,
      @JsonKey(name: 'today_completion_rate') final double todayCompletionRate,
      @JsonKey(name: 'weekly_completion_rate')
      final double weeklyCompletionRate,
      @JsonKey(name: 'best_streak') final int bestStreak,
      @JsonKey(name: 'current_active_streak') final int currentActiveStreak,
      @JsonKey(name: 'total_logs') final int totalLogs,
      @JsonKey(name: 'completed_logs') final int completedLogs,
      @JsonKey(name: 'completion_rate') final double completionRate,
      @JsonKey(name: 'current_streak')
      final int currentStreak}) = _$HabitStatsDataImpl;

  factory _HabitStatsData.fromJson(Map<String, dynamic> json) =
      _$HabitStatsDataImpl.fromJson;

  @override
  @JsonKey(name: 'total_habits')
  int get totalHabits;
  @override
  @JsonKey(name: 'active_habits')
  int get activeHabits;
  @override
  @JsonKey(name: 'completed_today')
  int get completedToday;
  @override
  @JsonKey(name: 'today_completion_rate')
  double get todayCompletionRate;
  @override
  @JsonKey(name: 'weekly_completion_rate')
  double get weeklyCompletionRate;
  @override
  @JsonKey(name: 'best_streak')
  int get bestStreak;
  @override
  @JsonKey(name: 'current_active_streak')
  int get currentActiveStreak;
  @override // For UI compatibility
  @JsonKey(name: 'total_logs')
  int get totalLogs;
  @override
  @JsonKey(name: 'completed_logs')
  int get completedLogs;
  @override
  @JsonKey(name: 'completion_rate')
  double get completionRate;
  @override
  @JsonKey(name: 'current_streak')
  int get currentStreak;
  @override
  @JsonKey(ignore: true)
  _$$HabitStatsDataImplCopyWith<_$HabitStatsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FinanceStatsData _$FinanceStatsDataFromJson(Map<String, dynamic> json) {
  return _FinanceStatsData.fromJson(json);
}

/// @nodoc
mixin _$FinanceStatsData {
  @JsonKey(name: 'total_income')
  double get income => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_expense')
  double get expense => throw _privateConstructorUsedError;
  double get balance => throw _privateConstructorUsedError;
  @JsonKey(name: 'transaction_count')
  int get transactionCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FinanceStatsDataCopyWith<FinanceStatsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinanceStatsDataCopyWith<$Res> {
  factory $FinanceStatsDataCopyWith(
          FinanceStatsData value, $Res Function(FinanceStatsData) then) =
      _$FinanceStatsDataCopyWithImpl<$Res, FinanceStatsData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'total_income') double income,
      @JsonKey(name: 'total_expense') double expense,
      double balance,
      @JsonKey(name: 'transaction_count') int transactionCount});
}

/// @nodoc
class _$FinanceStatsDataCopyWithImpl<$Res, $Val extends FinanceStatsData>
    implements $FinanceStatsDataCopyWith<$Res> {
  _$FinanceStatsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? income = null,
    Object? expense = null,
    Object? balance = null,
    Object? transactionCount = null,
  }) {
    return _then(_value.copyWith(
      income: null == income
          ? _value.income
          : income // ignore: cast_nullable_to_non_nullable
              as double,
      expense: null == expense
          ? _value.expense
          : expense // ignore: cast_nullable_to_non_nullable
              as double,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      transactionCount: null == transactionCount
          ? _value.transactionCount
          : transactionCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FinanceStatsDataImplCopyWith<$Res>
    implements $FinanceStatsDataCopyWith<$Res> {
  factory _$$FinanceStatsDataImplCopyWith(_$FinanceStatsDataImpl value,
          $Res Function(_$FinanceStatsDataImpl) then) =
      __$$FinanceStatsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total_income') double income,
      @JsonKey(name: 'total_expense') double expense,
      double balance,
      @JsonKey(name: 'transaction_count') int transactionCount});
}

/// @nodoc
class __$$FinanceStatsDataImplCopyWithImpl<$Res>
    extends _$FinanceStatsDataCopyWithImpl<$Res, _$FinanceStatsDataImpl>
    implements _$$FinanceStatsDataImplCopyWith<$Res> {
  __$$FinanceStatsDataImplCopyWithImpl(_$FinanceStatsDataImpl _value,
      $Res Function(_$FinanceStatsDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? income = null,
    Object? expense = null,
    Object? balance = null,
    Object? transactionCount = null,
  }) {
    return _then(_$FinanceStatsDataImpl(
      income: null == income
          ? _value.income
          : income // ignore: cast_nullable_to_non_nullable
              as double,
      expense: null == expense
          ? _value.expense
          : expense // ignore: cast_nullable_to_non_nullable
              as double,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      transactionCount: null == transactionCount
          ? _value.transactionCount
          : transactionCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FinanceStatsDataImpl implements _FinanceStatsData {
  const _$FinanceStatsDataImpl(
      {@JsonKey(name: 'total_income') this.income = 0.0,
      @JsonKey(name: 'total_expense') this.expense = 0.0,
      this.balance = 0.0,
      @JsonKey(name: 'transaction_count') this.transactionCount = 0});

  factory _$FinanceStatsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$FinanceStatsDataImplFromJson(json);

  @override
  @JsonKey(name: 'total_income')
  final double income;
  @override
  @JsonKey(name: 'total_expense')
  final double expense;
  @override
  @JsonKey()
  final double balance;
  @override
  @JsonKey(name: 'transaction_count')
  final int transactionCount;

  @override
  String toString() {
    return 'FinanceStatsData(income: $income, expense: $expense, balance: $balance, transactionCount: $transactionCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinanceStatsDataImpl &&
            (identical(other.income, income) || other.income == income) &&
            (identical(other.expense, expense) || other.expense == expense) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.transactionCount, transactionCount) ||
                other.transactionCount == transactionCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, income, expense, balance, transactionCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinanceStatsDataImplCopyWith<_$FinanceStatsDataImpl> get copyWith =>
      __$$FinanceStatsDataImplCopyWithImpl<_$FinanceStatsDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FinanceStatsDataImplToJson(
      this,
    );
  }
}

abstract class _FinanceStatsData implements FinanceStatsData {
  const factory _FinanceStatsData(
          {@JsonKey(name: 'total_income') final double income,
          @JsonKey(name: 'total_expense') final double expense,
          final double balance,
          @JsonKey(name: 'transaction_count') final int transactionCount}) =
      _$FinanceStatsDataImpl;

  factory _FinanceStatsData.fromJson(Map<String, dynamic> json) =
      _$FinanceStatsDataImpl.fromJson;

  @override
  @JsonKey(name: 'total_income')
  double get income;
  @override
  @JsonKey(name: 'total_expense')
  double get expense;
  @override
  double get balance;
  @override
  @JsonKey(name: 'transaction_count')
  int get transactionCount;
  @override
  @JsonKey(ignore: true)
  _$$FinanceStatsDataImplCopyWith<_$FinanceStatsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

JobStatsData _$JobStatsDataFromJson(Map<String, dynamic> json) {
  return _JobStatsData.fromJson(json);
}

/// @nodoc
mixin _$JobStatsData {
  @JsonKey(name: 'total_applications')
  int get totalApplications => throw _privateConstructorUsedError;
  @JsonKey(name: 'active_applications')
  int get activeApplications => throw _privateConstructorUsedError;
  int get interviews => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_projects')
  int get totalProjects => throw _privateConstructorUsedError;
  @JsonKey(name: 'active_projects')
  int get activeProjects => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobStatsDataCopyWith<JobStatsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobStatsDataCopyWith<$Res> {
  factory $JobStatsDataCopyWith(
          JobStatsData value, $Res Function(JobStatsData) then) =
      _$JobStatsDataCopyWithImpl<$Res, JobStatsData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'total_applications') int totalApplications,
      @JsonKey(name: 'active_applications') int activeApplications,
      int interviews,
      @JsonKey(name: 'total_projects') int totalProjects,
      @JsonKey(name: 'active_projects') int activeProjects});
}

/// @nodoc
class _$JobStatsDataCopyWithImpl<$Res, $Val extends JobStatsData>
    implements $JobStatsDataCopyWith<$Res> {
  _$JobStatsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalApplications = null,
    Object? activeApplications = null,
    Object? interviews = null,
    Object? totalProjects = null,
    Object? activeProjects = null,
  }) {
    return _then(_value.copyWith(
      totalApplications: null == totalApplications
          ? _value.totalApplications
          : totalApplications // ignore: cast_nullable_to_non_nullable
              as int,
      activeApplications: null == activeApplications
          ? _value.activeApplications
          : activeApplications // ignore: cast_nullable_to_non_nullable
              as int,
      interviews: null == interviews
          ? _value.interviews
          : interviews // ignore: cast_nullable_to_non_nullable
              as int,
      totalProjects: null == totalProjects
          ? _value.totalProjects
          : totalProjects // ignore: cast_nullable_to_non_nullable
              as int,
      activeProjects: null == activeProjects
          ? _value.activeProjects
          : activeProjects // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JobStatsDataImplCopyWith<$Res>
    implements $JobStatsDataCopyWith<$Res> {
  factory _$$JobStatsDataImplCopyWith(
          _$JobStatsDataImpl value, $Res Function(_$JobStatsDataImpl) then) =
      __$$JobStatsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total_applications') int totalApplications,
      @JsonKey(name: 'active_applications') int activeApplications,
      int interviews,
      @JsonKey(name: 'total_projects') int totalProjects,
      @JsonKey(name: 'active_projects') int activeProjects});
}

/// @nodoc
class __$$JobStatsDataImplCopyWithImpl<$Res>
    extends _$JobStatsDataCopyWithImpl<$Res, _$JobStatsDataImpl>
    implements _$$JobStatsDataImplCopyWith<$Res> {
  __$$JobStatsDataImplCopyWithImpl(
      _$JobStatsDataImpl _value, $Res Function(_$JobStatsDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalApplications = null,
    Object? activeApplications = null,
    Object? interviews = null,
    Object? totalProjects = null,
    Object? activeProjects = null,
  }) {
    return _then(_$JobStatsDataImpl(
      totalApplications: null == totalApplications
          ? _value.totalApplications
          : totalApplications // ignore: cast_nullable_to_non_nullable
              as int,
      activeApplications: null == activeApplications
          ? _value.activeApplications
          : activeApplications // ignore: cast_nullable_to_non_nullable
              as int,
      interviews: null == interviews
          ? _value.interviews
          : interviews // ignore: cast_nullable_to_non_nullable
              as int,
      totalProjects: null == totalProjects
          ? _value.totalProjects
          : totalProjects // ignore: cast_nullable_to_non_nullable
              as int,
      activeProjects: null == activeProjects
          ? _value.activeProjects
          : activeProjects // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JobStatsDataImpl implements _JobStatsData {
  const _$JobStatsDataImpl(
      {@JsonKey(name: 'total_applications') this.totalApplications = 0,
      @JsonKey(name: 'active_applications') this.activeApplications = 0,
      this.interviews = 0,
      @JsonKey(name: 'total_projects') this.totalProjects = 0,
      @JsonKey(name: 'active_projects') this.activeProjects = 0});

  factory _$JobStatsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobStatsDataImplFromJson(json);

  @override
  @JsonKey(name: 'total_applications')
  final int totalApplications;
  @override
  @JsonKey(name: 'active_applications')
  final int activeApplications;
  @override
  @JsonKey()
  final int interviews;
  @override
  @JsonKey(name: 'total_projects')
  final int totalProjects;
  @override
  @JsonKey(name: 'active_projects')
  final int activeProjects;

  @override
  String toString() {
    return 'JobStatsData(totalApplications: $totalApplications, activeApplications: $activeApplications, interviews: $interviews, totalProjects: $totalProjects, activeProjects: $activeProjects)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobStatsDataImpl &&
            (identical(other.totalApplications, totalApplications) ||
                other.totalApplications == totalApplications) &&
            (identical(other.activeApplications, activeApplications) ||
                other.activeApplications == activeApplications) &&
            (identical(other.interviews, interviews) ||
                other.interviews == interviews) &&
            (identical(other.totalProjects, totalProjects) ||
                other.totalProjects == totalProjects) &&
            (identical(other.activeProjects, activeProjects) ||
                other.activeProjects == activeProjects));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, totalApplications,
      activeApplications, interviews, totalProjects, activeProjects);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JobStatsDataImplCopyWith<_$JobStatsDataImpl> get copyWith =>
      __$$JobStatsDataImplCopyWithImpl<_$JobStatsDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JobStatsDataImplToJson(
      this,
    );
  }
}

abstract class _JobStatsData implements JobStatsData {
  const factory _JobStatsData(
          {@JsonKey(name: 'total_applications') final int totalApplications,
          @JsonKey(name: 'active_applications') final int activeApplications,
          final int interviews,
          @JsonKey(name: 'total_projects') final int totalProjects,
          @JsonKey(name: 'active_projects') final int activeProjects}) =
      _$JobStatsDataImpl;

  factory _JobStatsData.fromJson(Map<String, dynamic> json) =
      _$JobStatsDataImpl.fromJson;

  @override
  @JsonKey(name: 'total_applications')
  int get totalApplications;
  @override
  @JsonKey(name: 'active_applications')
  int get activeApplications;
  @override
  int get interviews;
  @override
  @JsonKey(name: 'total_projects')
  int get totalProjects;
  @override
  @JsonKey(name: 'active_projects')
  int get activeProjects;
  @override
  @JsonKey(ignore: true)
  _$$JobStatsDataImplCopyWith<_$JobStatsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
