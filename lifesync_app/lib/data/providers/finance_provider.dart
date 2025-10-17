import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/finance_model.dart';
import '../repositories/finance_repository.dart';
import 'repository_provider.dart';

// Transactions Provider
final transactionsProvider = StateNotifierProvider<TransactionsNotifier, AsyncValue<List<Transaction>>>((ref) {
  final repository = ref.watch(financeRepositoryProvider);
  return TransactionsNotifier(repository);
});

class TransactionsNotifier extends StateNotifier<AsyncValue<List<Transaction>>> {
  final FinanceRepository _repository;

  TransactionsNotifier(this._repository) : super(const AsyncValue.loading()) {
    loadTransactions();
  }

  Future<void> loadTransactions({String? type, int? categoryId}) async {
    state = const AsyncValue.loading();
    try {
      final transactions = await _repository.getTransactions(
        type: type,
        categoryId: categoryId,
      );
      state = AsyncValue.data(transactions);
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
    }
  }

  Future<void> createTransaction(CreateTransactionRequest request) async {
    try {
      await _repository.createTransaction(request);
      await loadTransactions();
    } catch (e) {
      rethrow;
    }
  }

  Future<void> updateTransaction(int id, UpdateTransactionRequest request) async {
    try {
      await _repository.updateTransaction(id, request);
      await loadTransactions();
    } catch (e) {
      rethrow;
    }
  }

  Future<void> deleteTransaction(int id) async {
    try {
      await _repository.deleteTransaction(id);
      await loadTransactions();
    } catch (e) {
      rethrow;
    }
  }
}

// Categories Provider
final categoriesProvider = StateNotifierProvider<CategoriesNotifier, AsyncValue<List<Category>>>((ref) {
  final repository = ref.watch(financeRepositoryProvider);
  return CategoriesNotifier(repository);
});

class CategoriesNotifier extends StateNotifier<AsyncValue<List<Category>>> {
  final FinanceRepository _repository;

  CategoriesNotifier(this._repository) : super(const AsyncValue.loading()) {
    loadCategories();
  }

  Future<void> loadCategories({String? type}) async {
    state = const AsyncValue.loading();
    try {
      final categories = await _repository.getCategories(type: type);
      state = AsyncValue.data(categories);
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
    }
  }

  Future<void> createCategory(CreateCategoryRequest request) async {
    try {
      await _repository.createCategory(request);
      await loadCategories();
    } catch (e) {
      rethrow;
    }
  }

  Future<void> deleteCategory(int id) async {
    try {
      await _repository.deleteCategory(id);
      await loadCategories();
    } catch (e) {
      rethrow;
    }
  }
}

// Finance Stats Provider
final financeStatsProvider = FutureProvider<FinanceStats>((ref) async {
  final repository = ref.watch(financeRepositoryProvider);
  return repository.getFinanceStats();
});
