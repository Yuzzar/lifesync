import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../repositories/habit_repository.dart';
import '../repositories/finance_repository.dart';
import '../repositories/job_repository.dart';
import '../repositories/dashboard_repository.dart';
import 'api_provider.dart';

// Repository Providers
final habitRepositoryProvider = Provider<HabitRepository>((ref) {
  return HabitRepository(ref.read(apiServiceProvider));
});

final financeRepositoryProvider = Provider<FinanceRepository>((ref) {
  return FinanceRepository(ref.read(apiServiceProvider));
});

final jobRepositoryProvider = Provider<JobRepository>((ref) {
  return JobRepository(ref.read(apiServiceProvider));
});

final dashboardRepositoryProvider = Provider<DashboardRepository>((ref) {
  return DashboardRepository(ref.read(apiServiceProvider));
});
