import 'package:dio/dio.dart';
import '../models/job_model.dart';
import '../services/api_service.dart';
import '../../core/constants/api_constants.dart';

class JobRepository {
  final ApiService _apiService;

  JobRepository(this._apiService);

  // Job Applications
  Future<List<JobApplication>> getJobApplications({
    int page = 1,
    int limit = 20,
    String? status,
    String? companyName,
  }) async {
    try {
      final queryParams = {
        'page': page.toString(),
        'limit': limit.toString(),
        if (status != null) 'status': status,
        if (companyName != null) 'company_name': companyName,
      };

      final response = await _apiService.get(
        ApiConstants.jobApplications,
        queryParameters: queryParams,
      );

      final List<dynamic> data = response.data['data'] ?? [];
      return data.map((json) => JobApplication.fromJson(json)).toList();
    } catch (e) {
      throw _handleError(e);
    }
  }

  Future<JobApplication> getJobApplicationById(int id) async {
    try {
      final response = await _apiService.get(ApiConstants.jobApplicationById(id));
      return JobApplication.fromJson(response.data['data']);
    } catch (e) {
      throw _handleError(e);
    }
  }

  Future<JobApplication> createJobApplication(CreateJobApplicationRequest request) async {
    try {
      final response = await _apiService.post(
        ApiConstants.jobApplications,
        data: request.toJson(),
      );
      return JobApplication.fromJson(response.data['data']);
    } catch (e) {
      throw _handleError(e);
    }
  }

  Future<JobApplication> updateJobApplication(int id, UpdateJobApplicationRequest request) async {
    try {
      final response = await _apiService.put(
        ApiConstants.jobApplicationById(id),
        data: request.toJson(),
      );
      return JobApplication.fromJson(response.data['data']);
    } catch (e) {
      throw _handleError(e);
    }
  }

  Future<void> deleteJobApplication(int id) async {
    try {
      await _apiService.delete(ApiConstants.jobApplicationById(id));
    } catch (e) {
      throw _handleError(e);
    }
  }

  // Projects
  Future<List<Project>> getProjects({
    int page = 1,
    int limit = 20,
    String? status,
  }) async {
    try {
      final queryParams = {
        'page': page.toString(),
        'limit': limit.toString(),
        if (status != null) 'status': status,
      };

      final response = await _apiService.get(
        ApiConstants.projects,
        queryParameters: queryParams,
      );

      final List<dynamic> data = response.data['data'] ?? [];
      return data.map((json) => Project.fromJson(json)).toList();
    } catch (e) {
      throw _handleError(e);
    }
  }

  Future<Project> getProjectById(int id) async {
    try {
      final response = await _apiService.get(ApiConstants.projectById(id));
      return Project.fromJson(response.data['data']);
    } catch (e) {
      throw _handleError(e);
    }
  }

  Future<Project> createProject(CreateProjectRequest request) async {
    try {
      final response = await _apiService.post(
        ApiConstants.projects,
        data: request.toJson(),
      );
      return Project.fromJson(response.data['data']);
    } catch (e) {
      throw _handleError(e);
    }
  }

  Future<Project> updateProject(int id, Map<String, dynamic> updates) async {
    try {
      final response = await _apiService.put(
        ApiConstants.projectById(id),
        data: updates,
      );
      return Project.fromJson(response.data['data']);
    } catch (e) {
      throw _handleError(e);
    }
  }

  Future<void> deleteProject(int id) async {
    try {
      await _apiService.delete(ApiConstants.projectById(id));
    } catch (e) {
      throw _handleError(e);
    }
  }

  // Stats
  Future<Map<String, dynamic>> getJobStats() async {
    try {
      final response = await _apiService.get(ApiConstants.jobStats);
      return response.data['data'] as Map<String, dynamic>;
    } catch (e) {
      throw _handleError(e);
    }
  }

  String _handleError(dynamic error) {
    if (error is DioException) {
      return error.message ?? 'An error occurred';
    }
    return error.toString();
  }
}
