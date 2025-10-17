import 'package:freezed_annotation/freezed_annotation.dart';

part 'finance_model.freezed.dart';
part 'finance_model.g.dart';

@freezed
class Transaction with _$Transaction {
  const factory Transaction({
    required int id,
    required String type, // income or expense
    required double amount,
    @JsonKey(name: 'category_id') required int categoryId,
    String? description,
    required DateTime date,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    Category? category, // Optional nested category
  }) = _Transaction;

  factory Transaction.fromJson(Map<String, dynamic> json) => _$TransactionFromJson(json);
}

@freezed
class Category with _$Category {
  const factory Category({
    required int id,
    required String name,
    String? icon,
    String? color,
    required String type, // income or expense
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);
}

@freezed
class FinanceStats with _$FinanceStats {
  const factory FinanceStats({
    @JsonKey(name: 'total_income') @Default(0.0) double totalIncome,
    @JsonKey(name: 'total_expense') @Default(0.0) double totalExpense,
    @Default(0.0) double balance,
    @JsonKey(name: 'transaction_count') @Default(0) int transactionCount,
    @JsonKey(name: 'income_by_category') @Default([]) List<CategoryAmount> incomeByCategory,
    @JsonKey(name: 'expense_by_category') @Default([]) List<CategoryAmount> expenseByCategory,
  }) = _FinanceStats;

  factory FinanceStats.fromJson(Map<String, dynamic> json) => _$FinanceStatsFromJson(json);
}

@freezed
class CategoryAmount with _$CategoryAmount {
  const factory CategoryAmount({
    @JsonKey(name: 'category_name') required String categoryName,
    required double amount,
  }) = _CategoryAmount;

  factory CategoryAmount.fromJson(Map<String, dynamic> json) => _$CategoryAmountFromJson(json);
}

// Request DTOs
@freezed
class CreateTransactionRequest with _$CreateTransactionRequest {
  const factory CreateTransactionRequest({
    required String type,
    required double amount,
    @JsonKey(name: 'category_id') required int categoryId,
    String? description,
    required String date, // yyyy-MM-dd format
  }) = _CreateTransactionRequest;

  factory CreateTransactionRequest.fromJson(Map<String, dynamic> json) => 
      _$CreateTransactionRequestFromJson(json);
}

@freezed
class UpdateTransactionRequest with _$UpdateTransactionRequest {
  const factory UpdateTransactionRequest({
    String? type,
    double? amount,
    @JsonKey(name: 'category_id') int? categoryId,
    String? description,
    String? date,
  }) = _UpdateTransactionRequest;

  factory UpdateTransactionRequest.fromJson(Map<String, dynamic> json) => 
      _$UpdateTransactionRequestFromJson(json);
}

@freezed
class CreateCategoryRequest with _$CreateCategoryRequest {
  const factory CreateCategoryRequest({
    required String name,
    String? icon,
    String? color,
    required String type,
  }) = _CreateCategoryRequest;

  factory CreateCategoryRequest.fromJson(Map<String, dynamic> json) => 
      _$CreateCategoryRequestFromJson(json);
}
