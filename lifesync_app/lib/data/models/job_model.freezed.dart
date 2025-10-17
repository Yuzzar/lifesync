// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

JobApplication _$JobApplicationFromJson(Map<String, dynamic> json) {
  return _JobApplication.fromJson(json);
}

/// @nodoc
mixin _$JobApplication {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_name')
  String get companyName => throw _privateConstructorUsedError;
  String get position => throw _privateConstructorUsedError;
  @JsonKey(name: 'job_description')
  String? get description => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'applied_date')
  DateTime? get applicationDate => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'salary_min')
  double? get salaryMin => throw _privateConstructorUsedError;
  @JsonKey(name: 'salary_max')
  double? get salaryMax => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;
  @JsonKey(name: 'job_url')
  String? get jobUrl => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobApplicationCopyWith<JobApplication> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobApplicationCopyWith<$Res> {
  factory $JobApplicationCopyWith(
          JobApplication value, $Res Function(JobApplication) then) =
      _$JobApplicationCopyWithImpl<$Res, JobApplication>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'company_name') String companyName,
      String position,
      @JsonKey(name: 'job_description') String? description,
      String status,
      @JsonKey(name: 'applied_date') DateTime? applicationDate,
      String? location,
      @JsonKey(name: 'salary_min') double? salaryMin,
      @JsonKey(name: 'salary_max') double? salaryMax,
      String? currency,
      @JsonKey(name: 'job_url') String? jobUrl,
      String? notes,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class _$JobApplicationCopyWithImpl<$Res, $Val extends JobApplication>
    implements $JobApplicationCopyWith<$Res> {
  _$JobApplicationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? companyName = null,
    Object? position = null,
    Object? description = freezed,
    Object? status = null,
    Object? applicationDate = freezed,
    Object? location = freezed,
    Object? salaryMin = freezed,
    Object? salaryMax = freezed,
    Object? currency = freezed,
    Object? jobUrl = freezed,
    Object? notes = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      applicationDate: freezed == applicationDate
          ? _value.applicationDate
          : applicationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      salaryMin: freezed == salaryMin
          ? _value.salaryMin
          : salaryMin // ignore: cast_nullable_to_non_nullable
              as double?,
      salaryMax: freezed == salaryMax
          ? _value.salaryMax
          : salaryMax // ignore: cast_nullable_to_non_nullable
              as double?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      jobUrl: freezed == jobUrl
          ? _value.jobUrl
          : jobUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$JobApplicationImplCopyWith<$Res>
    implements $JobApplicationCopyWith<$Res> {
  factory _$$JobApplicationImplCopyWith(_$JobApplicationImpl value,
          $Res Function(_$JobApplicationImpl) then) =
      __$$JobApplicationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'company_name') String companyName,
      String position,
      @JsonKey(name: 'job_description') String? description,
      String status,
      @JsonKey(name: 'applied_date') DateTime? applicationDate,
      String? location,
      @JsonKey(name: 'salary_min') double? salaryMin,
      @JsonKey(name: 'salary_max') double? salaryMax,
      String? currency,
      @JsonKey(name: 'job_url') String? jobUrl,
      String? notes,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class __$$JobApplicationImplCopyWithImpl<$Res>
    extends _$JobApplicationCopyWithImpl<$Res, _$JobApplicationImpl>
    implements _$$JobApplicationImplCopyWith<$Res> {
  __$$JobApplicationImplCopyWithImpl(
      _$JobApplicationImpl _value, $Res Function(_$JobApplicationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? companyName = null,
    Object? position = null,
    Object? description = freezed,
    Object? status = null,
    Object? applicationDate = freezed,
    Object? location = freezed,
    Object? salaryMin = freezed,
    Object? salaryMax = freezed,
    Object? currency = freezed,
    Object? jobUrl = freezed,
    Object? notes = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$JobApplicationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      applicationDate: freezed == applicationDate
          ? _value.applicationDate
          : applicationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      salaryMin: freezed == salaryMin
          ? _value.salaryMin
          : salaryMin // ignore: cast_nullable_to_non_nullable
              as double?,
      salaryMax: freezed == salaryMax
          ? _value.salaryMax
          : salaryMax // ignore: cast_nullable_to_non_nullable
              as double?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      jobUrl: freezed == jobUrl
          ? _value.jobUrl
          : jobUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$JobApplicationImpl implements _JobApplication {
  const _$JobApplicationImpl(
      {required this.id,
      @JsonKey(name: 'company_name') required this.companyName,
      required this.position,
      @JsonKey(name: 'job_description') this.description,
      required this.status,
      @JsonKey(name: 'applied_date') this.applicationDate,
      this.location,
      @JsonKey(name: 'salary_min') this.salaryMin,
      @JsonKey(name: 'salary_max') this.salaryMax,
      this.currency,
      @JsonKey(name: 'job_url') this.jobUrl,
      this.notes,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt});

  factory _$JobApplicationImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobApplicationImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'company_name')
  final String companyName;
  @override
  final String position;
  @override
  @JsonKey(name: 'job_description')
  final String? description;
  @override
  final String status;
  @override
  @JsonKey(name: 'applied_date')
  final DateTime? applicationDate;
  @override
  final String? location;
  @override
  @JsonKey(name: 'salary_min')
  final double? salaryMin;
  @override
  @JsonKey(name: 'salary_max')
  final double? salaryMax;
  @override
  final String? currency;
  @override
  @JsonKey(name: 'job_url')
  final String? jobUrl;
  @override
  final String? notes;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  @override
  String toString() {
    return 'JobApplication(id: $id, companyName: $companyName, position: $position, description: $description, status: $status, applicationDate: $applicationDate, location: $location, salaryMin: $salaryMin, salaryMax: $salaryMax, currency: $currency, jobUrl: $jobUrl, notes: $notes, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobApplicationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.applicationDate, applicationDate) ||
                other.applicationDate == applicationDate) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.salaryMin, salaryMin) ||
                other.salaryMin == salaryMin) &&
            (identical(other.salaryMax, salaryMax) ||
                other.salaryMax == salaryMax) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.jobUrl, jobUrl) || other.jobUrl == jobUrl) &&
            (identical(other.notes, notes) || other.notes == notes) &&
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
      companyName,
      position,
      description,
      status,
      applicationDate,
      location,
      salaryMin,
      salaryMax,
      currency,
      jobUrl,
      notes,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JobApplicationImplCopyWith<_$JobApplicationImpl> get copyWith =>
      __$$JobApplicationImplCopyWithImpl<_$JobApplicationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JobApplicationImplToJson(
      this,
    );
  }
}

abstract class _JobApplication implements JobApplication {
  const factory _JobApplication(
          {required final int id,
          @JsonKey(name: 'company_name') required final String companyName,
          required final String position,
          @JsonKey(name: 'job_description') final String? description,
          required final String status,
          @JsonKey(name: 'applied_date') final DateTime? applicationDate,
          final String? location,
          @JsonKey(name: 'salary_min') final double? salaryMin,
          @JsonKey(name: 'salary_max') final double? salaryMax,
          final String? currency,
          @JsonKey(name: 'job_url') final String? jobUrl,
          final String? notes,
          @JsonKey(name: 'created_at') required final DateTime createdAt,
          @JsonKey(name: 'updated_at') required final DateTime updatedAt}) =
      _$JobApplicationImpl;

  factory _JobApplication.fromJson(Map<String, dynamic> json) =
      _$JobApplicationImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'company_name')
  String get companyName;
  @override
  String get position;
  @override
  @JsonKey(name: 'job_description')
  String? get description;
  @override
  String get status;
  @override
  @JsonKey(name: 'applied_date')
  DateTime? get applicationDate;
  @override
  String? get location;
  @override
  @JsonKey(name: 'salary_min')
  double? get salaryMin;
  @override
  @JsonKey(name: 'salary_max')
  double? get salaryMax;
  @override
  String? get currency;
  @override
  @JsonKey(name: 'job_url')
  String? get jobUrl;
  @override
  String? get notes;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$JobApplicationImplCopyWith<_$JobApplicationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Project _$ProjectFromJson(Map<String, dynamic> json) {
  return _Project.fromJson(json);
}

/// @nodoc
mixin _$Project {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_date')
  DateTime? get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_date')
  DateTime? get endDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'client_name')
  String? get clientName => throw _privateConstructorUsedError;
  @JsonKey(name: 'project_value')
  double? get projectValue => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectCopyWith<Project> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectCopyWith<$Res> {
  factory $ProjectCopyWith(Project value, $Res Function(Project) then) =
      _$ProjectCopyWithImpl<$Res, Project>;
  @useResult
  $Res call(
      {int id,
      String name,
      String? description,
      String status,
      @JsonKey(name: 'start_date') DateTime? startDate,
      @JsonKey(name: 'end_date') DateTime? endDate,
      @JsonKey(name: 'client_name') String? clientName,
      @JsonKey(name: 'project_value') double? projectValue,
      String? currency,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class _$ProjectCopyWithImpl<$Res, $Val extends Project>
    implements $ProjectCopyWith<$Res> {
  _$ProjectCopyWithImpl(this._value, this._then);

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
    Object? status = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? clientName = freezed,
    Object? projectValue = freezed,
    Object? currency = freezed,
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
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      clientName: freezed == clientName
          ? _value.clientName
          : clientName // ignore: cast_nullable_to_non_nullable
              as String?,
      projectValue: freezed == projectValue
          ? _value.projectValue
          : projectValue // ignore: cast_nullable_to_non_nullable
              as double?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$ProjectImplCopyWith<$Res> implements $ProjectCopyWith<$Res> {
  factory _$$ProjectImplCopyWith(
          _$ProjectImpl value, $Res Function(_$ProjectImpl) then) =
      __$$ProjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String? description,
      String status,
      @JsonKey(name: 'start_date') DateTime? startDate,
      @JsonKey(name: 'end_date') DateTime? endDate,
      @JsonKey(name: 'client_name') String? clientName,
      @JsonKey(name: 'project_value') double? projectValue,
      String? currency,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class __$$ProjectImplCopyWithImpl<$Res>
    extends _$ProjectCopyWithImpl<$Res, _$ProjectImpl>
    implements _$$ProjectImplCopyWith<$Res> {
  __$$ProjectImplCopyWithImpl(
      _$ProjectImpl _value, $Res Function(_$ProjectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? status = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? clientName = freezed,
    Object? projectValue = freezed,
    Object? currency = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$ProjectImpl(
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
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      clientName: freezed == clientName
          ? _value.clientName
          : clientName // ignore: cast_nullable_to_non_nullable
              as String?,
      projectValue: freezed == projectValue
          ? _value.projectValue
          : projectValue // ignore: cast_nullable_to_non_nullable
              as double?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$ProjectImpl implements _Project {
  const _$ProjectImpl(
      {required this.id,
      required this.name,
      this.description,
      required this.status,
      @JsonKey(name: 'start_date') this.startDate,
      @JsonKey(name: 'end_date') this.endDate,
      @JsonKey(name: 'client_name') this.clientName,
      @JsonKey(name: 'project_value') this.projectValue,
      this.currency,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt});

  factory _$ProjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? description;
  @override
  final String status;
  @override
  @JsonKey(name: 'start_date')
  final DateTime? startDate;
  @override
  @JsonKey(name: 'end_date')
  final DateTime? endDate;
  @override
  @JsonKey(name: 'client_name')
  final String? clientName;
  @override
  @JsonKey(name: 'project_value')
  final double? projectValue;
  @override
  final String? currency;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Project(id: $id, name: $name, description: $description, status: $status, startDate: $startDate, endDate: $endDate, clientName: $clientName, projectValue: $projectValue, currency: $currency, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.clientName, clientName) ||
                other.clientName == clientName) &&
            (identical(other.projectValue, projectValue) ||
                other.projectValue == projectValue) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
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
      status,
      startDate,
      endDate,
      clientName,
      projectValue,
      currency,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectImplCopyWith<_$ProjectImpl> get copyWith =>
      __$$ProjectImplCopyWithImpl<_$ProjectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectImplToJson(
      this,
    );
  }
}

abstract class _Project implements Project {
  const factory _Project(
          {required final int id,
          required final String name,
          final String? description,
          required final String status,
          @JsonKey(name: 'start_date') final DateTime? startDate,
          @JsonKey(name: 'end_date') final DateTime? endDate,
          @JsonKey(name: 'client_name') final String? clientName,
          @JsonKey(name: 'project_value') final double? projectValue,
          final String? currency,
          @JsonKey(name: 'created_at') required final DateTime createdAt,
          @JsonKey(name: 'updated_at') required final DateTime updatedAt}) =
      _$ProjectImpl;

  factory _Project.fromJson(Map<String, dynamic> json) = _$ProjectImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get description;
  @override
  String get status;
  @override
  @JsonKey(name: 'start_date')
  DateTime? get startDate;
  @override
  @JsonKey(name: 'end_date')
  DateTime? get endDate;
  @override
  @JsonKey(name: 'client_name')
  String? get clientName;
  @override
  @JsonKey(name: 'project_value')
  double? get projectValue;
  @override
  String? get currency;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$ProjectImplCopyWith<_$ProjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateJobApplicationRequest _$CreateJobApplicationRequestFromJson(
    Map<String, dynamic> json) {
  return _CreateJobApplicationRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateJobApplicationRequest {
  @JsonKey(name: 'company_name')
  String get companyName => throw _privateConstructorUsedError;
  String get position => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'applied_date')
  String? get applicationDate => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'salary_min')
  double? get salaryMin => throw _privateConstructorUsedError;
  @JsonKey(name: 'salary_max')
  double? get salaryMax => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateJobApplicationRequestCopyWith<CreateJobApplicationRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateJobApplicationRequestCopyWith<$Res> {
  factory $CreateJobApplicationRequestCopyWith(
          CreateJobApplicationRequest value,
          $Res Function(CreateJobApplicationRequest) then) =
      _$CreateJobApplicationRequestCopyWithImpl<$Res,
          CreateJobApplicationRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'company_name') String companyName,
      String position,
      String status,
      @JsonKey(name: 'applied_date') String? applicationDate,
      String? location,
      @JsonKey(name: 'salary_min') double? salaryMin,
      @JsonKey(name: 'salary_max') double? salaryMax});
}

/// @nodoc
class _$CreateJobApplicationRequestCopyWithImpl<$Res,
        $Val extends CreateJobApplicationRequest>
    implements $CreateJobApplicationRequestCopyWith<$Res> {
  _$CreateJobApplicationRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyName = null,
    Object? position = null,
    Object? status = null,
    Object? applicationDate = freezed,
    Object? location = freezed,
    Object? salaryMin = freezed,
    Object? salaryMax = freezed,
  }) {
    return _then(_value.copyWith(
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      applicationDate: freezed == applicationDate
          ? _value.applicationDate
          : applicationDate // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      salaryMin: freezed == salaryMin
          ? _value.salaryMin
          : salaryMin // ignore: cast_nullable_to_non_nullable
              as double?,
      salaryMax: freezed == salaryMax
          ? _value.salaryMax
          : salaryMax // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateJobApplicationRequestImplCopyWith<$Res>
    implements $CreateJobApplicationRequestCopyWith<$Res> {
  factory _$$CreateJobApplicationRequestImplCopyWith(
          _$CreateJobApplicationRequestImpl value,
          $Res Function(_$CreateJobApplicationRequestImpl) then) =
      __$$CreateJobApplicationRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'company_name') String companyName,
      String position,
      String status,
      @JsonKey(name: 'applied_date') String? applicationDate,
      String? location,
      @JsonKey(name: 'salary_min') double? salaryMin,
      @JsonKey(name: 'salary_max') double? salaryMax});
}

/// @nodoc
class __$$CreateJobApplicationRequestImplCopyWithImpl<$Res>
    extends _$CreateJobApplicationRequestCopyWithImpl<$Res,
        _$CreateJobApplicationRequestImpl>
    implements _$$CreateJobApplicationRequestImplCopyWith<$Res> {
  __$$CreateJobApplicationRequestImplCopyWithImpl(
      _$CreateJobApplicationRequestImpl _value,
      $Res Function(_$CreateJobApplicationRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyName = null,
    Object? position = null,
    Object? status = null,
    Object? applicationDate = freezed,
    Object? location = freezed,
    Object? salaryMin = freezed,
    Object? salaryMax = freezed,
  }) {
    return _then(_$CreateJobApplicationRequestImpl(
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      applicationDate: freezed == applicationDate
          ? _value.applicationDate
          : applicationDate // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      salaryMin: freezed == salaryMin
          ? _value.salaryMin
          : salaryMin // ignore: cast_nullable_to_non_nullable
              as double?,
      salaryMax: freezed == salaryMax
          ? _value.salaryMax
          : salaryMax // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateJobApplicationRequestImpl
    implements _CreateJobApplicationRequest {
  const _$CreateJobApplicationRequestImpl(
      {@JsonKey(name: 'company_name') required this.companyName,
      required this.position,
      required this.status,
      @JsonKey(name: 'applied_date') this.applicationDate,
      this.location,
      @JsonKey(name: 'salary_min') this.salaryMin,
      @JsonKey(name: 'salary_max') this.salaryMax});

  factory _$CreateJobApplicationRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreateJobApplicationRequestImplFromJson(json);

  @override
  @JsonKey(name: 'company_name')
  final String companyName;
  @override
  final String position;
  @override
  final String status;
  @override
  @JsonKey(name: 'applied_date')
  final String? applicationDate;
  @override
  final String? location;
  @override
  @JsonKey(name: 'salary_min')
  final double? salaryMin;
  @override
  @JsonKey(name: 'salary_max')
  final double? salaryMax;

  @override
  String toString() {
    return 'CreateJobApplicationRequest(companyName: $companyName, position: $position, status: $status, applicationDate: $applicationDate, location: $location, salaryMin: $salaryMin, salaryMax: $salaryMax)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateJobApplicationRequestImpl &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.applicationDate, applicationDate) ||
                other.applicationDate == applicationDate) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.salaryMin, salaryMin) ||
                other.salaryMin == salaryMin) &&
            (identical(other.salaryMax, salaryMax) ||
                other.salaryMax == salaryMax));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, companyName, position, status,
      applicationDate, location, salaryMin, salaryMax);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateJobApplicationRequestImplCopyWith<_$CreateJobApplicationRequestImpl>
      get copyWith => __$$CreateJobApplicationRequestImplCopyWithImpl<
          _$CreateJobApplicationRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateJobApplicationRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateJobApplicationRequest
    implements CreateJobApplicationRequest {
  const factory _CreateJobApplicationRequest(
          {@JsonKey(name: 'company_name') required final String companyName,
          required final String position,
          required final String status,
          @JsonKey(name: 'applied_date') final String? applicationDate,
          final String? location,
          @JsonKey(name: 'salary_min') final double? salaryMin,
          @JsonKey(name: 'salary_max') final double? salaryMax}) =
      _$CreateJobApplicationRequestImpl;

  factory _CreateJobApplicationRequest.fromJson(Map<String, dynamic> json) =
      _$CreateJobApplicationRequestImpl.fromJson;

  @override
  @JsonKey(name: 'company_name')
  String get companyName;
  @override
  String get position;
  @override
  String get status;
  @override
  @JsonKey(name: 'applied_date')
  String? get applicationDate;
  @override
  String? get location;
  @override
  @JsonKey(name: 'salary_min')
  double? get salaryMin;
  @override
  @JsonKey(name: 'salary_max')
  double? get salaryMax;
  @override
  @JsonKey(ignore: true)
  _$$CreateJobApplicationRequestImplCopyWith<_$CreateJobApplicationRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateJobApplicationRequest _$UpdateJobApplicationRequestFromJson(
    Map<String, dynamic> json) {
  return _UpdateJobApplicationRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateJobApplicationRequest {
  @JsonKey(name: 'company_name')
  String? get companyName => throw _privateConstructorUsedError;
  String? get position => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'applied_date')
  String? get applicationDate => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'salary_min')
  double? get salaryMin => throw _privateConstructorUsedError;
  @JsonKey(name: 'salary_max')
  double? get salaryMax => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateJobApplicationRequestCopyWith<UpdateJobApplicationRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateJobApplicationRequestCopyWith<$Res> {
  factory $UpdateJobApplicationRequestCopyWith(
          UpdateJobApplicationRequest value,
          $Res Function(UpdateJobApplicationRequest) then) =
      _$UpdateJobApplicationRequestCopyWithImpl<$Res,
          UpdateJobApplicationRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'company_name') String? companyName,
      String? position,
      String? status,
      @JsonKey(name: 'applied_date') String? applicationDate,
      String? location,
      @JsonKey(name: 'salary_min') double? salaryMin,
      @JsonKey(name: 'salary_max') double? salaryMax});
}

/// @nodoc
class _$UpdateJobApplicationRequestCopyWithImpl<$Res,
        $Val extends UpdateJobApplicationRequest>
    implements $UpdateJobApplicationRequestCopyWith<$Res> {
  _$UpdateJobApplicationRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyName = freezed,
    Object? position = freezed,
    Object? status = freezed,
    Object? applicationDate = freezed,
    Object? location = freezed,
    Object? salaryMin = freezed,
    Object? salaryMax = freezed,
  }) {
    return _then(_value.copyWith(
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      applicationDate: freezed == applicationDate
          ? _value.applicationDate
          : applicationDate // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      salaryMin: freezed == salaryMin
          ? _value.salaryMin
          : salaryMin // ignore: cast_nullable_to_non_nullable
              as double?,
      salaryMax: freezed == salaryMax
          ? _value.salaryMax
          : salaryMax // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateJobApplicationRequestImplCopyWith<$Res>
    implements $UpdateJobApplicationRequestCopyWith<$Res> {
  factory _$$UpdateJobApplicationRequestImplCopyWith(
          _$UpdateJobApplicationRequestImpl value,
          $Res Function(_$UpdateJobApplicationRequestImpl) then) =
      __$$UpdateJobApplicationRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'company_name') String? companyName,
      String? position,
      String? status,
      @JsonKey(name: 'applied_date') String? applicationDate,
      String? location,
      @JsonKey(name: 'salary_min') double? salaryMin,
      @JsonKey(name: 'salary_max') double? salaryMax});
}

/// @nodoc
class __$$UpdateJobApplicationRequestImplCopyWithImpl<$Res>
    extends _$UpdateJobApplicationRequestCopyWithImpl<$Res,
        _$UpdateJobApplicationRequestImpl>
    implements _$$UpdateJobApplicationRequestImplCopyWith<$Res> {
  __$$UpdateJobApplicationRequestImplCopyWithImpl(
      _$UpdateJobApplicationRequestImpl _value,
      $Res Function(_$UpdateJobApplicationRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyName = freezed,
    Object? position = freezed,
    Object? status = freezed,
    Object? applicationDate = freezed,
    Object? location = freezed,
    Object? salaryMin = freezed,
    Object? salaryMax = freezed,
  }) {
    return _then(_$UpdateJobApplicationRequestImpl(
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      applicationDate: freezed == applicationDate
          ? _value.applicationDate
          : applicationDate // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      salaryMin: freezed == salaryMin
          ? _value.salaryMin
          : salaryMin // ignore: cast_nullable_to_non_nullable
              as double?,
      salaryMax: freezed == salaryMax
          ? _value.salaryMax
          : salaryMax // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateJobApplicationRequestImpl
    implements _UpdateJobApplicationRequest {
  const _$UpdateJobApplicationRequestImpl(
      {@JsonKey(name: 'company_name') this.companyName,
      this.position,
      this.status,
      @JsonKey(name: 'applied_date') this.applicationDate,
      this.location,
      @JsonKey(name: 'salary_min') this.salaryMin,
      @JsonKey(name: 'salary_max') this.salaryMax});

  factory _$UpdateJobApplicationRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdateJobApplicationRequestImplFromJson(json);

  @override
  @JsonKey(name: 'company_name')
  final String? companyName;
  @override
  final String? position;
  @override
  final String? status;
  @override
  @JsonKey(name: 'applied_date')
  final String? applicationDate;
  @override
  final String? location;
  @override
  @JsonKey(name: 'salary_min')
  final double? salaryMin;
  @override
  @JsonKey(name: 'salary_max')
  final double? salaryMax;

  @override
  String toString() {
    return 'UpdateJobApplicationRequest(companyName: $companyName, position: $position, status: $status, applicationDate: $applicationDate, location: $location, salaryMin: $salaryMin, salaryMax: $salaryMax)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateJobApplicationRequestImpl &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.applicationDate, applicationDate) ||
                other.applicationDate == applicationDate) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.salaryMin, salaryMin) ||
                other.salaryMin == salaryMin) &&
            (identical(other.salaryMax, salaryMax) ||
                other.salaryMax == salaryMax));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, companyName, position, status,
      applicationDate, location, salaryMin, salaryMax);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateJobApplicationRequestImplCopyWith<_$UpdateJobApplicationRequestImpl>
      get copyWith => __$$UpdateJobApplicationRequestImplCopyWithImpl<
          _$UpdateJobApplicationRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateJobApplicationRequestImplToJson(
      this,
    );
  }
}

abstract class _UpdateJobApplicationRequest
    implements UpdateJobApplicationRequest {
  const factory _UpdateJobApplicationRequest(
          {@JsonKey(name: 'company_name') final String? companyName,
          final String? position,
          final String? status,
          @JsonKey(name: 'applied_date') final String? applicationDate,
          final String? location,
          @JsonKey(name: 'salary_min') final double? salaryMin,
          @JsonKey(name: 'salary_max') final double? salaryMax}) =
      _$UpdateJobApplicationRequestImpl;

  factory _UpdateJobApplicationRequest.fromJson(Map<String, dynamic> json) =
      _$UpdateJobApplicationRequestImpl.fromJson;

  @override
  @JsonKey(name: 'company_name')
  String? get companyName;
  @override
  String? get position;
  @override
  String? get status;
  @override
  @JsonKey(name: 'applied_date')
  String? get applicationDate;
  @override
  String? get location;
  @override
  @JsonKey(name: 'salary_min')
  double? get salaryMin;
  @override
  @JsonKey(name: 'salary_max')
  double? get salaryMax;
  @override
  @JsonKey(ignore: true)
  _$$UpdateJobApplicationRequestImplCopyWith<_$UpdateJobApplicationRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CreateProjectRequest _$CreateProjectRequestFromJson(Map<String, dynamic> json) {
  return _CreateProjectRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateProjectRequest {
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_date')
  String? get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_date')
  String? get endDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateProjectRequestCopyWith<CreateProjectRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateProjectRequestCopyWith<$Res> {
  factory $CreateProjectRequestCopyWith(CreateProjectRequest value,
          $Res Function(CreateProjectRequest) then) =
      _$CreateProjectRequestCopyWithImpl<$Res, CreateProjectRequest>;
  @useResult
  $Res call(
      {String name,
      String? description,
      String status,
      @JsonKey(name: 'start_date') String? startDate,
      @JsonKey(name: 'end_date') String? endDate});
}

/// @nodoc
class _$CreateProjectRequestCopyWithImpl<$Res,
        $Val extends CreateProjectRequest>
    implements $CreateProjectRequestCopyWith<$Res> {
  _$CreateProjectRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = freezed,
    Object? status = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
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
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateProjectRequestImplCopyWith<$Res>
    implements $CreateProjectRequestCopyWith<$Res> {
  factory _$$CreateProjectRequestImplCopyWith(_$CreateProjectRequestImpl value,
          $Res Function(_$CreateProjectRequestImpl) then) =
      __$$CreateProjectRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String? description,
      String status,
      @JsonKey(name: 'start_date') String? startDate,
      @JsonKey(name: 'end_date') String? endDate});
}

/// @nodoc
class __$$CreateProjectRequestImplCopyWithImpl<$Res>
    extends _$CreateProjectRequestCopyWithImpl<$Res, _$CreateProjectRequestImpl>
    implements _$$CreateProjectRequestImplCopyWith<$Res> {
  __$$CreateProjectRequestImplCopyWithImpl(_$CreateProjectRequestImpl _value,
      $Res Function(_$CreateProjectRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = freezed,
    Object? status = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_$CreateProjectRequestImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateProjectRequestImpl implements _CreateProjectRequest {
  const _$CreateProjectRequestImpl(
      {required this.name,
      this.description,
      required this.status,
      @JsonKey(name: 'start_date') this.startDate,
      @JsonKey(name: 'end_date') this.endDate});

  factory _$CreateProjectRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateProjectRequestImplFromJson(json);

  @override
  final String name;
  @override
  final String? description;
  @override
  final String status;
  @override
  @JsonKey(name: 'start_date')
  final String? startDate;
  @override
  @JsonKey(name: 'end_date')
  final String? endDate;

  @override
  String toString() {
    return 'CreateProjectRequest(name: $name, description: $description, status: $status, startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateProjectRequestImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, description, status, startDate, endDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateProjectRequestImplCopyWith<_$CreateProjectRequestImpl>
      get copyWith =>
          __$$CreateProjectRequestImplCopyWithImpl<_$CreateProjectRequestImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateProjectRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateProjectRequest implements CreateProjectRequest {
  const factory _CreateProjectRequest(
          {required final String name,
          final String? description,
          required final String status,
          @JsonKey(name: 'start_date') final String? startDate,
          @JsonKey(name: 'end_date') final String? endDate}) =
      _$CreateProjectRequestImpl;

  factory _CreateProjectRequest.fromJson(Map<String, dynamic> json) =
      _$CreateProjectRequestImpl.fromJson;

  @override
  String get name;
  @override
  String? get description;
  @override
  String get status;
  @override
  @JsonKey(name: 'start_date')
  String? get startDate;
  @override
  @JsonKey(name: 'end_date')
  String? get endDate;
  @override
  @JsonKey(ignore: true)
  _$$CreateProjectRequestImplCopyWith<_$CreateProjectRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
