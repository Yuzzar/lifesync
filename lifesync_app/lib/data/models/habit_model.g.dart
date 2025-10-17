// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'habit_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HabitImpl _$$HabitImplFromJson(Map<String, dynamic> json) => _$HabitImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String?,
      category: json['category'] as String?,
      color: json['color'] as String?,
      icon: json['icon'] as String?,
      frequency: json['frequency'] as String,
      targetDays: json['target_days'] as String?,
      reminderTime: json['reminder_time'] as String?,
      isActive: json['is_active'] as bool? ?? true,
      currentStreak: (json['current_streak'] as num?)?.toInt() ?? 0,
      bestStreak: (json['best_streak'] as num?)?.toInt() ?? 0,
      totalCompleted: (json['total_completed'] as num?)?.toInt() ?? 0,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$HabitImplToJson(_$HabitImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'category': instance.category,
      'color': instance.color,
      'icon': instance.icon,
      'frequency': instance.frequency,
      'target_days': instance.targetDays,
      'reminder_time': instance.reminderTime,
      'is_active': instance.isActive,
      'current_streak': instance.currentStreak,
      'best_streak': instance.bestStreak,
      'total_completed': instance.totalCompleted,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

_$CreateHabitRequestImpl _$$CreateHabitRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateHabitRequestImpl(
      name: json['name'] as String,
      description: json['description'] as String?,
      category: json['category'] as String,
      color: json['color'] as String?,
      icon: json['icon'] as String?,
      frequency: json['frequency'] as String?,
      targetDays: json['target_days'] as String?,
      reminderTime: json['reminder_time'] as String?,
    );

Map<String, dynamic> _$$CreateHabitRequestImplToJson(
        _$CreateHabitRequestImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'category': instance.category,
      'color': instance.color,
      'icon': instance.icon,
      'frequency': instance.frequency,
      'target_days': instance.targetDays,
      'reminder_time': instance.reminderTime,
    };

_$UpdateHabitRequestImpl _$$UpdateHabitRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateHabitRequestImpl(
      name: json['name'] as String?,
      description: json['description'] as String?,
      category: json['category'] as String?,
      color: json['color'] as String?,
      icon: json['icon'] as String?,
      frequency: json['frequency'] as String?,
      targetDays: json['target_days'] as String?,
      reminderTime: json['reminder_time'] as String?,
      isActive: json['is_active'] as bool?,
    );

Map<String, dynamic> _$$UpdateHabitRequestImplToJson(
        _$UpdateHabitRequestImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'category': instance.category,
      'color': instance.color,
      'icon': instance.icon,
      'frequency': instance.frequency,
      'target_days': instance.targetDays,
      'reminder_time': instance.reminderTime,
      'is_active': instance.isActive,
    };
