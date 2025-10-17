// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'finance_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionImpl _$$TransactionImplFromJson(Map<String, dynamic> json) =>
    _$TransactionImpl(
      id: (json['id'] as num).toInt(),
      type: json['type'] as String,
      amount: (json['amount'] as num).toDouble(),
      categoryId: (json['category_id'] as num).toInt(),
      description: json['description'] as String?,
      date: DateTime.parse(json['date'] as String),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      category: json['category'] == null
          ? null
          : Category.fromJson(json['category'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TransactionImplToJson(_$TransactionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'amount': instance.amount,
      'category_id': instance.categoryId,
      'description': instance.description,
      'date': instance.date.toIso8601String(),
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'category': instance.category,
    };

_$CategoryImpl _$$CategoryImplFromJson(Map<String, dynamic> json) =>
    _$CategoryImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      icon: json['icon'] as String?,
      color: json['color'] as String?,
      type: json['type'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$CategoryImplToJson(_$CategoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'icon': instance.icon,
      'color': instance.color,
      'type': instance.type,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

_$FinanceStatsImpl _$$FinanceStatsImplFromJson(Map<String, dynamic> json) =>
    _$FinanceStatsImpl(
      totalIncome: (json['total_income'] as num?)?.toDouble() ?? 0.0,
      totalExpense: (json['total_expense'] as num?)?.toDouble() ?? 0.0,
      balance: (json['balance'] as num?)?.toDouble() ?? 0.0,
      transactionCount: (json['transaction_count'] as num?)?.toInt() ?? 0,
      incomeByCategory: (json['income_by_category'] as List<dynamic>?)
              ?.map((e) => CategoryAmount.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      expenseByCategory: (json['expense_by_category'] as List<dynamic>?)
              ?.map((e) => CategoryAmount.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$FinanceStatsImplToJson(_$FinanceStatsImpl instance) =>
    <String, dynamic>{
      'total_income': instance.totalIncome,
      'total_expense': instance.totalExpense,
      'balance': instance.balance,
      'transaction_count': instance.transactionCount,
      'income_by_category': instance.incomeByCategory,
      'expense_by_category': instance.expenseByCategory,
    };

_$CategoryAmountImpl _$$CategoryAmountImplFromJson(Map<String, dynamic> json) =>
    _$CategoryAmountImpl(
      categoryName: json['category_name'] as String,
      amount: (json['amount'] as num).toDouble(),
    );

Map<String, dynamic> _$$CategoryAmountImplToJson(
        _$CategoryAmountImpl instance) =>
    <String, dynamic>{
      'category_name': instance.categoryName,
      'amount': instance.amount,
    };

_$CreateTransactionRequestImpl _$$CreateTransactionRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateTransactionRequestImpl(
      type: json['type'] as String,
      amount: (json['amount'] as num).toDouble(),
      categoryId: (json['category_id'] as num).toInt(),
      description: json['description'] as String?,
      date: json['date'] as String,
    );

Map<String, dynamic> _$$CreateTransactionRequestImplToJson(
        _$CreateTransactionRequestImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'amount': instance.amount,
      'category_id': instance.categoryId,
      'description': instance.description,
      'date': instance.date,
    };

_$UpdateTransactionRequestImpl _$$UpdateTransactionRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateTransactionRequestImpl(
      type: json['type'] as String?,
      amount: (json['amount'] as num?)?.toDouble(),
      categoryId: (json['category_id'] as num?)?.toInt(),
      description: json['description'] as String?,
      date: json['date'] as String?,
    );

Map<String, dynamic> _$$UpdateTransactionRequestImplToJson(
        _$UpdateTransactionRequestImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'amount': instance.amount,
      'category_id': instance.categoryId,
      'description': instance.description,
      'date': instance.date,
    };

_$CreateCategoryRequestImpl _$$CreateCategoryRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateCategoryRequestImpl(
      name: json['name'] as String,
      icon: json['icon'] as String?,
      color: json['color'] as String?,
      type: json['type'] as String,
    );

Map<String, dynamic> _$$CreateCategoryRequestImplToJson(
        _$CreateCategoryRequestImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'icon': instance.icon,
      'color': instance.color,
      'type': instance.type,
    };
