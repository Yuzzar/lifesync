import 'package:dio/dio.dart';
import '../models/dashboard_model.dart';
import '../services/api_service.dart';
import '../../core/constants/api_constants.dart';

class DashboardRepository {
  final ApiService _apiService;

  DashboardRepository(this._apiService);

  Future<DashboardStats> getDashboardStats() async {
    try {
      final response = await _apiService.get(ApiConstants.dashboardStats);
      return DashboardStats.fromJson(response.data['data']);
    } catch (e) {
      if (e is DioException) {
        throw e.message ?? 'An error occurred';
      }
      throw e.toString();
    }
  }
}
