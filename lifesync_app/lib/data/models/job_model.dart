import 'package:freezed_annotation/freezed_annotation.dart';

part 'job_model.freezed.dart';
part 'job_model.g.dart';

@freezed
class JobApplication with _$JobApplication {
  const factory JobApplication({
    required int id,
    @JsonKey(name: 'company_name') required String companyName,
    required String position,
    @JsonKey(name: 'job_description') String? description,
    required String status,
    @JsonKey(name: 'applied_date') DateTime? applicationDate,
    String? location,
    @JsonKey(name: 'salary_min') double? salaryMin,
    @JsonKey(name: 'salary_max') double? salaryMax,
    String? currency,
    @JsonKey(name: 'job_url') String? jobUrl,
    String? notes,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _JobApplication;

  factory JobApplication.fromJson(Map<String, dynamic> json) => 
      _$JobApplicationFromJson(json);
}

@freezed
class Project with _$Project {
  const factory Project({
    required int id,
    required String name,
    String? description,
    required String status,
    @JsonKey(name: 'start_date') DateTime? startDate,
    @JsonKey(name: 'end_date') DateTime? endDate,
    @JsonKey(name: 'client_name') String? clientName,
    @JsonKey(name: 'project_value') double? projectValue,
    String? currency,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _Project;

  factory Project.fromJson(Map<String, dynamic> json) => _$ProjectFromJson(json);
}

@freezed
class CreateJobApplicationRequest with _$CreateJobApplicationRequest {
  const factory CreateJobApplicationRequest({
    @JsonKey(name: 'company_name') required String companyName,
    required String position,
    required String status,
    @JsonKey(name: 'applied_date') String? applicationDate,
    String? location,
    @JsonKey(name: 'salary_min') double? salaryMin,
    @JsonKey(name: 'salary_max') double? salaryMax,
  }) = _CreateJobApplicationRequest;

  factory CreateJobApplicationRequest.fromJson(Map<String, dynamic> json) => 
      _$CreateJobApplicationRequestFromJson(json);
}

@freezed
class UpdateJobApplicationRequest with _$UpdateJobApplicationRequest {
  const factory UpdateJobApplicationRequest({
    @JsonKey(name: 'company_name') String? companyName,
    String? position,
    String? status,
    @JsonKey(name: 'applied_date') String? applicationDate,
    String? location,
    @JsonKey(name: 'salary_min') double? salaryMin,
    @JsonKey(name: 'salary_max') double? salaryMax,
  }) = _UpdateJobApplicationRequest;

  factory UpdateJobApplicationRequest.fromJson(Map<String, dynamic> json) => 
      _$UpdateJobApplicationRequestFromJson(json);
}

@freezed
class CreateProjectRequest with _$CreateProjectRequest {
  const factory CreateProjectRequest({
    required String name,
    String? description,
    required String status,
    @JsonKey(name: 'start_date') String? startDate,
    @JsonKey(name: 'end_date') String? endDate,
  }) = _CreateProjectRequest;

  factory CreateProjectRequest.fromJson(Map<String, dynamic> json) => 
      _$CreateProjectRequestFromJson(json);
}
