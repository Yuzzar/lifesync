import 'package:freezed_annotation/freezed_annotation.dart';

part 'habit_model.freezed.dart';
part 'habit_model.g.dart';

@freezed
class Habit with _$Habit {
  const factory Habit({
    required int id,
    required String name,
    String? description,
    String? category,
    String? color,
    String? icon,
    required String frequency,
    @JsonKey(name: 'target_days') String? targetDays,
    @JsonKey(name: 'reminder_time') String? reminderTime,
    @JsonKey(name: 'is_active') @Default(true) bool isActive,
    @JsonKey(name: 'current_streak') @Default(0) int currentStreak,
    @JsonKey(name: 'best_streak') @Default(0) int bestStreak,
    @JsonKey(name: 'total_completed') @Default(0) int totalCompleted,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _Habit;

  factory Habit.fromJson(Map<String, dynamic> json) => _$HabitFromJson(json);
}

@freezed
class CreateHabitRequest with _$CreateHabitRequest {
  const factory CreateHabitRequest({
    required String name,
    String? description,
    required String category,
    String? color,
    String? icon,
    String? frequency,
    @JsonKey(name: 'target_days') String? targetDays,
    @JsonKey(name: 'reminder_time') String? reminderTime,
  }) = _CreateHabitRequest;

  factory CreateHabitRequest.fromJson(Map<String, dynamic> json) => 
      _$CreateHabitRequestFromJson(json);
}

@freezed
class UpdateHabitRequest with _$UpdateHabitRequest {
  const factory UpdateHabitRequest({
    String? name,
    String? description,
    String? category,
    String? color,
    String? icon,
    String? frequency,
    @JsonKey(name: 'target_days') String? targetDays,
    @JsonKey(name: 'reminder_time') String? reminderTime,
    @JsonKey(name: 'is_active') bool? isActive,
  }) = _UpdateHabitRequest;

  factory UpdateHabitRequest.fromJson(Map<String, dynamic> json) => 
      _$UpdateHabitRequestFromJson(json);
}
