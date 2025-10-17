import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../services/api_service.dart';

// API Service Provider - Singleton
final apiServiceProvider = Provider<ApiService>((ref) {
  return ApiService();
});
