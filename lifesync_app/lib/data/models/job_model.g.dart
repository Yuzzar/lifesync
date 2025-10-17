// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JobApplicationImpl _$$JobApplicationImplFromJson(Map<String, dynamic> json) =>
    _$JobApplicationImpl(
      id: (json['id'] as num).toInt(),
      companyName: json['company_name'] as String,
      position: json['position'] as String,
      description: json['job_description'] as String?,
      status: json['status'] as String,
      applicationDate: json['applied_date'] == null
          ? null
          : DateTime.parse(json['applied_date'] as String),
      location: json['location'] as String?,
      salaryMin: (json['salary_min'] as num?)?.toDouble(),
      salaryMax: (json['salary_max'] as num?)?.toDouble(),
      currency: json['currency'] as String?,
      jobUrl: json['job_url'] as String?,
      notes: json['notes'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$JobApplicationImplToJson(
        _$JobApplicationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'company_name': instance.companyName,
      'position': instance.position,
      'job_description': instance.description,
      'status': instance.status,
      'applied_date': instance.applicationDate?.toIso8601String(),
      'location': instance.location,
      'salary_min': instance.salaryMin,
      'salary_max': instance.salaryMax,
      'currency': instance.currency,
      'job_url': instance.jobUrl,
      'notes': instance.notes,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

_$ProjectImpl _$$ProjectImplFromJson(Map<String, dynamic> json) =>
    _$ProjectImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String?,
      status: json['status'] as String,
      startDate: json['start_date'] == null
          ? null
          : DateTime.parse(json['start_date'] as String),
      endDate: json['end_date'] == null
          ? null
          : DateTime.parse(json['end_date'] as String),
      clientName: json['client_name'] as String?,
      projectValue: (json['project_value'] as num?)?.toDouble(),
      currency: json['currency'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$ProjectImplToJson(_$ProjectImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'status': instance.status,
      'start_date': instance.startDate?.toIso8601String(),
      'end_date': instance.endDate?.toIso8601String(),
      'client_name': instance.clientName,
      'project_value': instance.projectValue,
      'currency': instance.currency,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

_$CreateJobApplicationRequestImpl _$$CreateJobApplicationRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateJobApplicationRequestImpl(
      companyName: json['company_name'] as String,
      position: json['position'] as String,
      status: json['status'] as String,
      applicationDate: json['applied_date'] as String?,
      location: json['location'] as String?,
      salaryMin: (json['salary_min'] as num?)?.toDouble(),
      salaryMax: (json['salary_max'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$CreateJobApplicationRequestImplToJson(
        _$CreateJobApplicationRequestImpl instance) =>
    <String, dynamic>{
      'company_name': instance.companyName,
      'position': instance.position,
      'status': instance.status,
      'applied_date': instance.applicationDate,
      'location': instance.location,
      'salary_min': instance.salaryMin,
      'salary_max': instance.salaryMax,
    };

_$UpdateJobApplicationRequestImpl _$$UpdateJobApplicationRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateJobApplicationRequestImpl(
      companyName: json['company_name'] as String?,
      position: json['position'] as String?,
      status: json['status'] as String?,
      applicationDate: json['applied_date'] as String?,
      location: json['location'] as String?,
      salaryMin: (json['salary_min'] as num?)?.toDouble(),
      salaryMax: (json['salary_max'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$UpdateJobApplicationRequestImplToJson(
        _$UpdateJobApplicationRequestImpl instance) =>
    <String, dynamic>{
      'company_name': instance.companyName,
      'position': instance.position,
      'status': instance.status,
      'applied_date': instance.applicationDate,
      'location': instance.location,
      'salary_min': instance.salaryMin,
      'salary_max': instance.salaryMax,
    };

_$CreateProjectRequestImpl _$$CreateProjectRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateProjectRequestImpl(
      name: json['name'] as String,
      description: json['description'] as String?,
      status: json['status'] as String,
      startDate: json['start_date'] as String?,
      endDate: json['end_date'] as String?,
    );

Map<String, dynamic> _$$CreateProjectRequestImplToJson(
        _$CreateProjectRequestImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'status': instance.status,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
    };
