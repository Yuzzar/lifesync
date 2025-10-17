import 'package:dio/dio.dart';
import '../models/habit_model.dart';
import '../services/api_service.dart';
import '../../core/constants/api_constants.dart';

class HabitRepository {
  final ApiService _apiService;

  HabitRepository(this._apiService);

  // Get all habits with pagination
  Future<List<Habit>> getHabits({
    int page = 1,
    int limit = 20,
    String? frequency,
  }) async {
    try {
      final queryParams = {
        'page': page.toString(),
        'limit': limit.toString(),
        if (frequency != null) 'frequency': frequency,
      };

      final response = await _apiService.get(
        ApiConstants.habits,
        queryParameters: queryParams,
      );

      final List<dynamic> data = response.data['data'] ?? [];
      return data.map((json) => Habit.fromJson(json)).toList();
    } catch (e) {
      throw _handleError(e);
    }
  }

  // Get habit by ID
  Future<Habit> getHabitById(int id) async {
    try {
      final response = await _apiService.get(ApiConstants.habitById(id));
      return Habit.fromJson(response.data['data']);
    } catch (e) {
      throw _handleError(e);
    }
  }

  // Create habit
  Future<Habit> createHabit(CreateHabitRequest request) async {
    try {
      final response = await _apiService.post(
        ApiConstants.habits,
        data: request.toJson(),
      );
      return Habit.fromJson(response.data['data']);
    } catch (e) {
      throw _handleError(e);
    }
  }

  // Update habit
  Future<Habit> updateHabit(int id, UpdateHabitRequest request) async {
    try {
      final response = await _apiService.put(
        ApiConstants.habitById(id),
        data: request.toJson(),
      );
      return Habit.fromJson(response.data['data']);
    } catch (e) {
      throw _handleError(e);
    }
  }

  // Delete habit
  Future<void> deleteHabit(int id) async {
    try {
      await _apiService.delete(ApiConstants.habitById(id));
    } catch (e) {
      throw _handleError(e);
    }
  }

  // Get habit stats
  Future<Map<String, dynamic>> getHabitStats(int habitId) async {
    try {
      final response = await _apiService.get(ApiConstants.habitStats(habitId));
      return response.data['data'] as Map<String, dynamic>;
    } catch (e) {
      throw _handleError(e);
    }
  }

  // Habit check/uncheck
  Future<Habit> checkHabit(int habitId) async {
    try {
      final response = await _apiService.post(
        '${ApiConstants.habitById(habitId)}/check',
        data: {},
      );
      return Habit.fromJson(response.data['data']);
    } catch (e) {
      throw _handleError(e);
    }
  }

  Future<Habit> uncheckHabit(int habitId) async {
    try {
      final response = await _apiService.post(
        '${ApiConstants.habitById(habitId)}/uncheck',
        data: {},
      );
      return Habit.fromJson(response.data['data']);
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
