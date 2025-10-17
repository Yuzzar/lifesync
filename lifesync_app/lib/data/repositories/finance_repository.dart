import 'package:dio/dio.dart';
import '../models/finance_model.dart';
import '../services/api_service.dart';
import '../../core/constants/api_constants.dart';

class FinanceRepository {
  final ApiService _apiService;

  FinanceRepository(this._apiService);

  // Transactions
  Future<List<Transaction>> getTransactions({
    int page = 1,
    int limit = 20,
    String? type,
    int? categoryId,
    String? startDate,
    String? endDate,
  }) async {
    try {
      final queryParams = {
        'page': page.toString(),
        'limit': limit.toString(),
        if (type != null) 'type': type,
        if (categoryId != null) 'category_id': categoryId.toString(),
        if (startDate != null) 'start_date': startDate,
        if (endDate != null) 'end_date': endDate,
      };

      final response = await _apiService.get(
        ApiConstants.transactions,
        queryParameters: queryParams,
      );

      final List<dynamic> data = response.data['data'] ?? [];
      return data.map((json) => Transaction.fromJson(json)).toList();
    } catch (e) {
      throw _handleError(e);
    }
  }

  Future<Transaction> getTransactionById(int id) async {
    try {
      final response = await _apiService.get(ApiConstants.transactionById(id));
      return Transaction.fromJson(response.data['data']);
    } catch (e) {
      throw _handleError(e);
    }
  }

  Future<Transaction> createTransaction(CreateTransactionRequest request) async {
    try {
      final response = await _apiService.post(
        ApiConstants.transactions,
        data: request.toJson(),
      );
      return Transaction.fromJson(response.data['data']);
    } catch (e) {
      throw _handleError(e);
    }
  }

  Future<Transaction> updateTransaction(int id, UpdateTransactionRequest request) async {
    try {
      final response = await _apiService.put(
        ApiConstants.transactionById(id),
        data: request.toJson(),
      );
      return Transaction.fromJson(response.data['data']);
    } catch (e) {
      throw _handleError(e);
    }
  }

  Future<void> deleteTransaction(int id) async {
    try {
      await _apiService.delete(ApiConstants.transactionById(id));
    } catch (e) {
      throw _handleError(e);
    }
  }

  // Categories
  Future<List<Category>> getCategories({String? type}) async {
    try {
      final queryParams = type != null ? {'type': type} : null;

      final response = await _apiService.get(
        ApiConstants.categories,
        queryParameters: queryParams,
      );

      final List<dynamic> data = response.data['data'] ?? [];
      return data.map((json) => Category.fromJson(json)).toList();
    } catch (e) {
      throw _handleError(e);
    }
  }

  Future<Category> getCategoryById(int id) async {
    try {
      final response = await _apiService.get(ApiConstants.categoryById(id));
      return Category.fromJson(response.data['data']);
    } catch (e) {
      throw _handleError(e);
    }
  }

  Future<Category> createCategory(CreateCategoryRequest request) async {
    try {
      final response = await _apiService.post(
        ApiConstants.categories,
        data: request.toJson(),
      );
      return Category.fromJson(response.data['data']);
    } catch (e) {
      throw _handleError(e);
    }
  }

  Future<void> deleteCategory(int id) async {
    try {
      await _apiService.delete(ApiConstants.categoryById(id));
    } catch (e) {
      throw _handleError(e);
    }
  }

  // Stats
  Future<FinanceStats> getFinanceStats({
    String? startDate,
    String? endDate,
  }) async {
    try {
      final queryParams = <String, String>{};
      if (startDate != null) queryParams['start_date'] = startDate;
      if (endDate != null) queryParams['end_date'] = endDate;

      final response = await _apiService.get(
        ApiConstants.financeStats,
        queryParameters: queryParams.isEmpty ? null : queryParams,
      );

      return FinanceStats.fromJson(response.data['data']);
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
