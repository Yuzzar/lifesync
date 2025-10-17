// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'habit_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Habit _$HabitFromJson(Map<String, dynamic> json) {
  return _Habit.fromJson(json);
}

/// @nodoc
mixin _$Habit {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;
  String get frequency => throw _privateConstructorUsedError;
  @JsonKey(name: 'target_days')
  String? get targetDays => throw _privateConstructorUsedError;
  @JsonKey(name: 'reminder_time')
  String? get reminderTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_streak')
  int get currentStreak => throw _privateConstructorUsedError;
  @JsonKey(name: 'best_streak')
  int get bestStreak => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_completed')
  int get totalCompleted => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HabitCopyWith<Habit> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HabitCopyWith<$Res> {
  factory $HabitCopyWith(Habit value, $Res Function(Habit) then) =
      _$HabitCopyWithImpl<$Res, Habit>;
  @useResult
  $Res call(
      {int id,
      String name,
      String? description,
      String? category,
      String? color,
      String? icon,
      String frequency,
      @JsonKey(name: 'target_days') String? targetDays,
      @JsonKey(name: 'reminder_time') String? reminderTime,
      @JsonKey(name: 'is_active') bool isActive,
      @JsonKey(name: 'current_streak') int currentStreak,
      @JsonKey(name: 'best_streak') int bestStreak,
      @JsonKey(name: 'total_completed') int totalCompleted,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class _$HabitCopyWithImpl<$Res, $Val extends Habit>
    implements $HabitCopyWith<$Res> {
  _$HabitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? category = freezed,
    Object? color = freezed,
    Object? icon = freezed,
    Object? frequency = null,
    Object? targetDays = freezed,
    Object? reminderTime = freezed,
    Object? isActive = null,
    Object? currentStreak = null,
    Object? bestStreak = null,
    Object? totalCompleted = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      frequency: null == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as String,
      targetDays: freezed == targetDays
          ? _value.targetDays
          : targetDays // ignore: cast_nullable_to_non_nullable
              as String?,
      reminderTime: freezed == reminderTime
          ? _value.reminderTime
          : reminderTime // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      currentStreak: null == currentStreak
          ? _value.currentStreak
          : currentStreak // ignore: cast_nullable_to_non_nullable
              as int,
      bestStreak: null == bestStreak
          ? _value.bestStreak
          : bestStreak // ignore: cast_nullable_to_non_nullable
              as int,
      totalCompleted: null == totalCompleted
          ? _value.totalCompleted
          : totalCompleted // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HabitImplCopyWith<$Res> implements $HabitCopyWith<$Res> {
  factory _$$HabitImplCopyWith(
          _$HabitImpl value, $Res Function(_$HabitImpl) then) =
      __$$HabitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String? description,
      String? category,
      String? color,
      String? icon,
      String frequency,
      @JsonKey(name: 'target_days') String? targetDays,
      @JsonKey(name: 'reminder_time') String? reminderTime,
      @JsonKey(name: 'is_active') bool isActive,
      @JsonKey(name: 'current_streak') int currentStreak,
      @JsonKey(name: 'best_streak') int bestStreak,
      @JsonKey(name: 'total_completed') int totalCompleted,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class __$$HabitImplCopyWithImpl<$Res>
    extends _$HabitCopyWithImpl<$Res, _$HabitImpl>
    implements _$$HabitImplCopyWith<$Res> {
  __$$HabitImplCopyWithImpl(
      _$HabitImpl _value, $Res Function(_$HabitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? category = freezed,
    Object? color = freezed,
    Object? icon = freezed,
    Object? frequency = null,
    Object? targetDays = freezed,
    Object? reminderTime = freezed,
    Object? isActive = null,
    Object? currentStreak = null,
    Object? bestStreak = null,
    Object? totalCompleted = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$HabitImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      frequency: null == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as String,
      targetDays: freezed == targetDays
          ? _value.targetDays
          : targetDays // ignore: cast_nullable_to_non_nullable
              as String?,
      reminderTime: freezed == reminderTime
          ? _value.reminderTime
          : reminderTime // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      currentStreak: null == currentStreak
          ? _value.currentStreak
          : currentStreak // ignore: cast_nullable_to_non_nullable
              as int,
      bestStreak: null == bestStreak
          ? _value.bestStreak
          : bestStreak // ignore: cast_nullable_to_non_nullable
              as int,
      totalCompleted: null == totalCompleted
          ? _value.totalCompleted
          : totalCompleted // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HabitImpl implements _Habit {
  const _$HabitImpl(
      {required this.id,
      required this.name,
      this.description,
      this.category,
      this.color,
      this.icon,
      required this.frequency,
      @JsonKey(name: 'target_days') this.targetDays,
      @JsonKey(name: 'reminder_time') this.reminderTime,
      @JsonKey(name: 'is_active') this.isActive = true,
      @JsonKey(name: 'current_streak') this.currentStreak = 0,
      @JsonKey(name: 'best_streak') this.bestStreak = 0,
      @JsonKey(name: 'total_completed') this.totalCompleted = 0,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt});

  factory _$HabitImpl.fromJson(Map<String, dynamic> json) =>
      _$$HabitImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? description;
  @override
  final String? category;
  @override
  final String? color;
  @override
  final String? icon;
  @override
  final String frequency;
  @override
  @JsonKey(name: 'target_days')
  final String? targetDays;
  @override
  @JsonKey(name: 'reminder_time')
  final String? reminderTime;
  @override
  @JsonKey(name: 'is_active')
  final bool isActive;
  @override
  @JsonKey(name: 'current_streak')
  final int currentStreak;
  @override
  @JsonKey(name: 'best_streak')
  final int bestStreak;
  @override
  @JsonKey(name: 'total_completed')
  final int totalCompleted;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Habit(id: $id, name: $name, description: $description, category: $category, color: $color, icon: $icon, frequency: $frequency, targetDays: $targetDays, reminderTime: $reminderTime, isActive: $isActive, currentStreak: $currentStreak, bestStreak: $bestStreak, totalCompleted: $totalCompleted, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HabitImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.frequency, frequency) ||
                other.frequency == frequency) &&
            (identical(other.targetDays, targetDays) ||
                other.targetDays == targetDays) &&
            (identical(other.reminderTime, reminderTime) ||
                other.reminderTime == reminderTime) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.currentStreak, currentStreak) ||
                other.currentStreak == currentStreak) &&
            (identical(other.bestStreak, bestStreak) ||
                other.bestStreak == bestStreak) &&
            (identical(other.totalCompleted, totalCompleted) ||
                other.totalCompleted == totalCompleted) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      category,
      color,
      icon,
      frequency,
      targetDays,
      reminderTime,
      isActive,
      currentStreak,
      bestStreak,
      totalCompleted,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HabitImplCopyWith<_$HabitImpl> get copyWith =>
      __$$HabitImplCopyWithImpl<_$HabitImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HabitImplToJson(
      this,
    );
  }
}

abstract class _Habit implements Habit {
  const factory _Habit(
          {required final int id,
          required final String name,
          final String? description,
          final String? category,
          final String? color,
          final String? icon,
          required final String frequency,
          @JsonKey(name: 'target_days') final String? targetDays,
          @JsonKey(name: 'reminder_time') final String? reminderTime,
          @JsonKey(name: 'is_active') final bool isActive,
          @JsonKey(name: 'current_streak') final int currentStreak,
          @JsonKey(name: 'best_streak') final int bestStreak,
          @JsonKey(name: 'total_completed') final int totalCompleted,
          @JsonKey(name: 'created_at') required final DateTime createdAt,
          @JsonKey(name: 'updated_at') required final DateTime updatedAt}) =
      _$HabitImpl;

  factory _Habit.fromJson(Map<String, dynamic> json) = _$HabitImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get description;
  @override
  String? get category;
  @override
  String? get color;
  @override
  String? get icon;
  @override
  String get frequency;
  @override
  @JsonKey(name: 'target_days')
  String? get targetDays;
  @override
  @JsonKey(name: 'reminder_time')
  String? get reminderTime;
  @override
  @JsonKey(name: 'is_active')
  bool get isActive;
  @override
  @JsonKey(name: 'current_streak')
  int get currentStreak;
  @override
  @JsonKey(name: 'best_streak')
  int get bestStreak;
  @override
  @JsonKey(name: 'total_completed')
  int get totalCompleted;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$HabitImplCopyWith<_$HabitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateHabitRequest _$CreateHabitRequestFromJson(Map<String, dynamic> json) {
  return _CreateHabitRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateHabitRequest {
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;
  String? get frequency => throw _privateConstructorUsedError;
  @JsonKey(name: 'target_days')
  String? get targetDays => throw _privateConstructorUsedError;
  @JsonKey(name: 'reminder_time')
  String? get reminderTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateHabitRequestCopyWith<CreateHabitRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateHabitRequestCopyWith<$Res> {
  factory $CreateHabitRequestCopyWith(
          CreateHabitRequest value, $Res Function(CreateHabitRequest) then) =
      _$CreateHabitRequestCopyWithImpl<$Res, CreateHabitRequest>;
  @useResult
  $Res call(
      {String name,
      String? description,
      String category,
      String? color,
      String? icon,
      String? frequency,
      @JsonKey(name: 'target_days') String? targetDays,
      @JsonKey(name: 'reminder_time') String? reminderTime});
}

/// @nodoc
class _$CreateHabitRequestCopyWithImpl<$Res, $Val extends CreateHabitRequest>
    implements $CreateHabitRequestCopyWith<$Res> {
  _$CreateHabitRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = freezed,
    Object? category = null,
    Object? color = freezed,
    Object? icon = freezed,
    Object? frequency = freezed,
    Object? targetDays = freezed,
    Object? reminderTime = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      frequency: freezed == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as String?,
      targetDays: freezed == targetDays
          ? _value.targetDays
          : targetDays // ignore: cast_nullable_to_non_nullable
              as String?,
      reminderTime: freezed == reminderTime
          ? _value.reminderTime
          : reminderTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateHabitRequestImplCopyWith<$Res>
    implements $CreateHabitRequestCopyWith<$Res> {
  factory _$$CreateHabitRequestImplCopyWith(_$CreateHabitRequestImpl value,
          $Res Function(_$CreateHabitRequestImpl) then) =
      __$$CreateHabitRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String? description,
      String category,
      String? color,
      String? icon,
      String? frequency,
      @JsonKey(name: 'target_days') String? targetDays,
      @JsonKey(name: 'reminder_time') String? reminderTime});
}

/// @nodoc
class __$$CreateHabitRequestImplCopyWithImpl<$Res>
    extends _$CreateHabitRequestCopyWithImpl<$Res, _$CreateHabitRequestImpl>
    implements _$$CreateHabitRequestImplCopyWith<$Res> {
  __$$CreateHabitRequestImplCopyWithImpl(_$CreateHabitRequestImpl _value,
      $Res Function(_$CreateHabitRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = freezed,
    Object? category = null,
    Object? color = freezed,
    Object? icon = freezed,
    Object? frequency = freezed,
    Object? targetDays = freezed,
    Object? reminderTime = freezed,
  }) {
    return _then(_$CreateHabitRequestImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      frequency: freezed == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as String?,
      targetDays: freezed == targetDays
          ? _value.targetDays
          : targetDays // ignore: cast_nullable_to_non_nullable
              as String?,
      reminderTime: freezed == reminderTime
          ? _value.reminderTime
          : reminderTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateHabitRequestImpl implements _CreateHabitRequest {
  const _$CreateHabitRequestImpl(
      {required this.name,
      this.description,
      required this.category,
      this.color,
      this.icon,
      this.frequency,
      @JsonKey(name: 'target_days') this.targetDays,
      @JsonKey(name: 'reminder_time') this.reminderTime});

  factory _$CreateHabitRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateHabitRequestImplFromJson(json);

  @override
  final String name;
  @override
  final String? description;
  @override
  final String category;
  @override
  final String? color;
  @override
  final String? icon;
  @override
  final String? frequency;
  @override
  @JsonKey(name: 'target_days')
  final String? targetDays;
  @override
  @JsonKey(name: 'reminder_time')
  final String? reminderTime;

  @override
  String toString() {
    return 'CreateHabitRequest(name: $name, description: $description, category: $category, color: $color, icon: $icon, frequency: $frequency, targetDays: $targetDays, reminderTime: $reminderTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateHabitRequestImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.frequency, frequency) ||
                other.frequency == frequency) &&
            (identical(other.targetDays, targetDays) ||
                other.targetDays == targetDays) &&
            (identical(other.reminderTime, reminderTime) ||
                other.reminderTime == reminderTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, description, category,
      color, icon, frequency, targetDays, reminderTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateHabitRequestImplCopyWith<_$CreateHabitRequestImpl> get copyWith =>
      __$$CreateHabitRequestImplCopyWithImpl<_$CreateHabitRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateHabitRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateHabitRequest implements CreateHabitRequest {
  const factory _CreateHabitRequest(
          {required final String name,
          final String? description,
          required final String category,
          final String? color,
          final String? icon,
          final String? frequency,
          @JsonKey(name: 'target_days') final String? targetDays,
          @JsonKey(name: 'reminder_time') final String? reminderTime}) =
      _$CreateHabitRequestImpl;

  factory _CreateHabitRequest.fromJson(Map<String, dynamic> json) =
      _$CreateHabitRequestImpl.fromJson;

  @override
  String get name;
  @override
  String? get description;
  @override
  String get category;
  @override
  String? get color;
  @override
  String? get icon;
  @override
  String? get frequency;
  @override
  @JsonKey(name: 'target_days')
  String? get targetDays;
  @override
  @JsonKey(name: 'reminder_time')
  String? get reminderTime;
  @override
  @JsonKey(ignore: true)
  _$$CreateHabitRequestImplCopyWith<_$CreateHabitRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateHabitRequest _$UpdateHabitRequestFromJson(Map<String, dynamic> json) {
  return _UpdateHabitRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateHabitRequest {
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;
  String? get frequency => throw _privateConstructorUsedError;
  @JsonKey(name: 'target_days')
  String? get targetDays => throw _privateConstructorUsedError;
  @JsonKey(name: 'reminder_time')
  String? get reminderTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool? get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateHabitRequestCopyWith<UpdateHabitRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateHabitRequestCopyWith<$Res> {
  factory $UpdateHabitRequestCopyWith(
          UpdateHabitRequest value, $Res Function(UpdateHabitRequest) then) =
      _$UpdateHabitRequestCopyWithImpl<$Res, UpdateHabitRequest>;
  @useResult
  $Res call(
      {String? name,
      String? description,
      String? category,
      String? color,
      String? icon,
      String? frequency,
      @JsonKey(name: 'target_days') String? targetDays,
      @JsonKey(name: 'reminder_time') String? reminderTime,
      @JsonKey(name: 'is_active') bool? isActive});
}

/// @nodoc
class _$UpdateHabitRequestCopyWithImpl<$Res, $Val extends UpdateHabitRequest>
    implements $UpdateHabitRequestCopyWith<$Res> {
  _$UpdateHabitRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? category = freezed,
    Object? color = freezed,
    Object? icon = freezed,
    Object? frequency = freezed,
    Object? targetDays = freezed,
    Object? reminderTime = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      frequency: freezed == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as String?,
      targetDays: freezed == targetDays
          ? _value.targetDays
          : targetDays // ignore: cast_nullable_to_non_nullable
              as String?,
      reminderTime: freezed == reminderTime
          ? _value.reminderTime
          : reminderTime // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateHabitRequestImplCopyWith<$Res>
    implements $UpdateHabitRequestCopyWith<$Res> {
  factory _$$UpdateHabitRequestImplCopyWith(_$UpdateHabitRequestImpl value,
          $Res Function(_$UpdateHabitRequestImpl) then) =
      __$$UpdateHabitRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? description,
      String? category,
      String? color,
      String? icon,
      String? frequency,
      @JsonKey(name: 'target_days') String? targetDays,
      @JsonKey(name: 'reminder_time') String? reminderTime,
      @JsonKey(name: 'is_active') bool? isActive});
}

/// @nodoc
class __$$UpdateHabitRequestImplCopyWithImpl<$Res>
    extends _$UpdateHabitRequestCopyWithImpl<$Res, _$UpdateHabitRequestImpl>
    implements _$$UpdateHabitRequestImplCopyWith<$Res> {
  __$$UpdateHabitRequestImplCopyWithImpl(_$UpdateHabitRequestImpl _value,
      $Res Function(_$UpdateHabitRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? category = freezed,
    Object? color = freezed,
    Object? icon = freezed,
    Object? frequency = freezed,
    Object? targetDays = freezed,
    Object? reminderTime = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_$UpdateHabitRequestImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      frequency: freezed == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as String?,
      targetDays: freezed == targetDays
          ? _value.targetDays
          : targetDays // ignore: cast_nullable_to_non_nullable
              as String?,
      reminderTime: freezed == reminderTime
          ? _value.reminderTime
          : reminderTime // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateHabitRequestImpl implements _UpdateHabitRequest {
  const _$UpdateHabitRequestImpl(
      {this.name,
      this.description,
      this.category,
      this.color,
      this.icon,
      this.frequency,
      @JsonKey(name: 'target_days') this.targetDays,
      @JsonKey(name: 'reminder_time') this.reminderTime,
      @JsonKey(name: 'is_active') this.isActive});

  factory _$UpdateHabitRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateHabitRequestImplFromJson(json);

  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? category;
  @override
  final String? color;
  @override
  final String? icon;
  @override
  final String? frequency;
  @override
  @JsonKey(name: 'target_days')
  final String? targetDays;
  @override
  @JsonKey(name: 'reminder_time')
  final String? reminderTime;
  @override
  @JsonKey(name: 'is_active')
  final bool? isActive;

  @override
  String toString() {
    return 'UpdateHabitRequest(name: $name, description: $description, category: $category, color: $color, icon: $icon, frequency: $frequency, targetDays: $targetDays, reminderTime: $reminderTime, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateHabitRequestImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.frequency, frequency) ||
                other.frequency == frequency) &&
            (identical(other.targetDays, targetDays) ||
                other.targetDays == targetDays) &&
            (identical(other.reminderTime, reminderTime) ||
                other.reminderTime == reminderTime) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, description, category,
      color, icon, frequency, targetDays, reminderTime, isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateHabitRequestImplCopyWith<_$UpdateHabitRequestImpl> get copyWith =>
      __$$UpdateHabitRequestImplCopyWithImpl<_$UpdateHabitRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateHabitRequestImplToJson(
      this,
    );
  }
}

abstract class _UpdateHabitRequest implements UpdateHabitRequest {
  const factory _UpdateHabitRequest(
          {final String? name,
          final String? description,
          final String? category,
          final String? color,
          final String? icon,
          final String? frequency,
          @JsonKey(name: 'target_days') final String? targetDays,
          @JsonKey(name: 'reminder_time') final String? reminderTime,
          @JsonKey(name: 'is_active') final bool? isActive}) =
      _$UpdateHabitRequestImpl;

  factory _UpdateHabitRequest.fromJson(Map<String, dynamic> json) =
      _$UpdateHabitRequestImpl.fromJson;

  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get category;
  @override
  String? get color;
  @override
  String? get icon;
  @override
  String? get frequency;
  @override
  @JsonKey(name: 'target_days')
  String? get targetDays;
  @override
  @JsonKey(name: 'reminder_time')
  String? get reminderTime;
  @override
  @JsonKey(name: 'is_active')
  bool? get isActive;
  @override
  @JsonKey(ignore: true)
  _$$UpdateHabitRequestImplCopyWith<_$UpdateHabitRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
