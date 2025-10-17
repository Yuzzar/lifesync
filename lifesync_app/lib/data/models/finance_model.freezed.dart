// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'finance_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Transaction _$TransactionFromJson(Map<String, dynamic> json) {
  return _Transaction.fromJson(json);
}

/// @nodoc
mixin _$Transaction {
  int get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError; // income or expense
  double get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_id')
  int get categoryId => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;
  Category? get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionCopyWith<Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionCopyWith<$Res> {
  factory $TransactionCopyWith(
          Transaction value, $Res Function(Transaction) then) =
      _$TransactionCopyWithImpl<$Res, Transaction>;
  @useResult
  $Res call(
      {int id,
      String type,
      double amount,
      @JsonKey(name: 'category_id') int categoryId,
      String? description,
      DateTime date,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      Category? category});

  $CategoryCopyWith<$Res>? get category;
}

/// @nodoc
class _$TransactionCopyWithImpl<$Res, $Val extends Transaction>
    implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? amount = null,
    Object? categoryId = null,
    Object? description = freezed,
    Object? date = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? category = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $CategoryCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TransactionImplCopyWith<$Res>
    implements $TransactionCopyWith<$Res> {
  factory _$$TransactionImplCopyWith(
          _$TransactionImpl value, $Res Function(_$TransactionImpl) then) =
      __$$TransactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String type,
      double amount,
      @JsonKey(name: 'category_id') int categoryId,
      String? description,
      DateTime date,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      Category? category});

  @override
  $CategoryCopyWith<$Res>? get category;
}

/// @nodoc
class __$$TransactionImplCopyWithImpl<$Res>
    extends _$TransactionCopyWithImpl<$Res, _$TransactionImpl>
    implements _$$TransactionImplCopyWith<$Res> {
  __$$TransactionImplCopyWithImpl(
      _$TransactionImpl _value, $Res Function(_$TransactionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? amount = null,
    Object? categoryId = null,
    Object? description = freezed,
    Object? date = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? category = freezed,
  }) {
    return _then(_$TransactionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionImpl implements _Transaction {
  const _$TransactionImpl(
      {required this.id,
      required this.type,
      required this.amount,
      @JsonKey(name: 'category_id') required this.categoryId,
      this.description,
      required this.date,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      this.category});

  factory _$TransactionImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionImplFromJson(json);

  @override
  final int id;
  @override
  final String type;
// income or expense
  @override
  final double amount;
  @override
  @JsonKey(name: 'category_id')
  final int categoryId;
  @override
  final String? description;
  @override
  final DateTime date;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  @override
  final Category? category;

  @override
  String toString() {
    return 'Transaction(id: $id, type: $type, amount: $amount, categoryId: $categoryId, description: $description, date: $date, createdAt: $createdAt, updatedAt: $updatedAt, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, type, amount, categoryId,
      description, date, createdAt, updatedAt, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionImplCopyWith<_$TransactionImpl> get copyWith =>
      __$$TransactionImplCopyWithImpl<_$TransactionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionImplToJson(
      this,
    );
  }
}

abstract class _Transaction implements Transaction {
  const factory _Transaction(
      {required final int id,
      required final String type,
      required final double amount,
      @JsonKey(name: 'category_id') required final int categoryId,
      final String? description,
      required final DateTime date,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      @JsonKey(name: 'updated_at') required final DateTime updatedAt,
      final Category? category}) = _$TransactionImpl;

  factory _Transaction.fromJson(Map<String, dynamic> json) =
      _$TransactionImpl.fromJson;

  @override
  int get id;
  @override
  String get type;
  @override // income or expense
  double get amount;
  @override
  @JsonKey(name: 'category_id')
  int get categoryId;
  @override
  String? get description;
  @override
  DateTime get date;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @override
  Category? get category;
  @override
  @JsonKey(ignore: true)
  _$$TransactionImplCopyWith<_$TransactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return _Category.fromJson(json);
}

/// @nodoc
mixin _$Category {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError; // income or expense
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryCopyWith<Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res, Category>;
  @useResult
  $Res call(
      {int id,
      String name,
      String? icon,
      String? color,
      String type,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res, $Val extends Category>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? icon = freezed,
    Object? color = freezed,
    Object? type = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryImplCopyWith<$Res>
    implements $CategoryCopyWith<$Res> {
  factory _$$CategoryImplCopyWith(
          _$CategoryImpl value, $Res Function(_$CategoryImpl) then) =
      __$$CategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String? icon,
      String? color,
      String type,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class __$$CategoryImplCopyWithImpl<$Res>
    extends _$CategoryCopyWithImpl<$Res, _$CategoryImpl>
    implements _$$CategoryImplCopyWith<$Res> {
  __$$CategoryImplCopyWithImpl(
      _$CategoryImpl _value, $Res Function(_$CategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? icon = freezed,
    Object? color = freezed,
    Object? type = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$CategoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryImpl implements _Category {
  const _$CategoryImpl(
      {required this.id,
      required this.name,
      this.icon,
      this.color,
      required this.type,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt});

  factory _$CategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? icon;
  @override
  final String? color;
  @override
  final String type;
// income or expense
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Category(id: $id, name: $name, icon: $icon, color: $color, type: $type, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, icon, color, type, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      __$$CategoryImplCopyWithImpl<_$CategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryImplToJson(
      this,
    );
  }
}

abstract class _Category implements Category {
  const factory _Category(
          {required final int id,
          required final String name,
          final String? icon,
          final String? color,
          required final String type,
          @JsonKey(name: 'created_at') required final DateTime createdAt,
          @JsonKey(name: 'updated_at') required final DateTime updatedAt}) =
      _$CategoryImpl;

  factory _Category.fromJson(Map<String, dynamic> json) =
      _$CategoryImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get icon;
  @override
  String? get color;
  @override
  String get type;
  @override // income or expense
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FinanceStats _$FinanceStatsFromJson(Map<String, dynamic> json) {
  return _FinanceStats.fromJson(json);
}

/// @nodoc
mixin _$FinanceStats {
  @JsonKey(name: 'total_income')
  double get totalIncome => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_expense')
  double get totalExpense => throw _privateConstructorUsedError;
  double get balance => throw _privateConstructorUsedError;
  @JsonKey(name: 'transaction_count')
  int get transactionCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'income_by_category')
  List<CategoryAmount> get incomeByCategory =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'expense_by_category')
  List<CategoryAmount> get expenseByCategory =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FinanceStatsCopyWith<FinanceStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinanceStatsCopyWith<$Res> {
  factory $FinanceStatsCopyWith(
          FinanceStats value, $Res Function(FinanceStats) then) =
      _$FinanceStatsCopyWithImpl<$Res, FinanceStats>;
  @useResult
  $Res call(
      {@JsonKey(name: 'total_income') double totalIncome,
      @JsonKey(name: 'total_expense') double totalExpense,
      double balance,
      @JsonKey(name: 'transaction_count') int transactionCount,
      @JsonKey(name: 'income_by_category')
      List<CategoryAmount> incomeByCategory,
      @JsonKey(name: 'expense_by_category')
      List<CategoryAmount> expenseByCategory});
}

/// @nodoc
class _$FinanceStatsCopyWithImpl<$Res, $Val extends FinanceStats>
    implements $FinanceStatsCopyWith<$Res> {
  _$FinanceStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalIncome = null,
    Object? totalExpense = null,
    Object? balance = null,
    Object? transactionCount = null,
    Object? incomeByCategory = null,
    Object? expenseByCategory = null,
  }) {
    return _then(_value.copyWith(
      totalIncome: null == totalIncome
          ? _value.totalIncome
          : totalIncome // ignore: cast_nullable_to_non_nullable
              as double,
      totalExpense: null == totalExpense
          ? _value.totalExpense
          : totalExpense // ignore: cast_nullable_to_non_nullable
              as double,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      transactionCount: null == transactionCount
          ? _value.transactionCount
          : transactionCount // ignore: cast_nullable_to_non_nullable
              as int,
      incomeByCategory: null == incomeByCategory
          ? _value.incomeByCategory
          : incomeByCategory // ignore: cast_nullable_to_non_nullable
              as List<CategoryAmount>,
      expenseByCategory: null == expenseByCategory
          ? _value.expenseByCategory
          : expenseByCategory // ignore: cast_nullable_to_non_nullable
              as List<CategoryAmount>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FinanceStatsImplCopyWith<$Res>
    implements $FinanceStatsCopyWith<$Res> {
  factory _$$FinanceStatsImplCopyWith(
          _$FinanceStatsImpl value, $Res Function(_$FinanceStatsImpl) then) =
      __$$FinanceStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total_income') double totalIncome,
      @JsonKey(name: 'total_expense') double totalExpense,
      double balance,
      @JsonKey(name: 'transaction_count') int transactionCount,
      @JsonKey(name: 'income_by_category')
      List<CategoryAmount> incomeByCategory,
      @JsonKey(name: 'expense_by_category')
      List<CategoryAmount> expenseByCategory});
}

/// @nodoc
class __$$FinanceStatsImplCopyWithImpl<$Res>
    extends _$FinanceStatsCopyWithImpl<$Res, _$FinanceStatsImpl>
    implements _$$FinanceStatsImplCopyWith<$Res> {
  __$$FinanceStatsImplCopyWithImpl(
      _$FinanceStatsImpl _value, $Res Function(_$FinanceStatsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalIncome = null,
    Object? totalExpense = null,
    Object? balance = null,
    Object? transactionCount = null,
    Object? incomeByCategory = null,
    Object? expenseByCategory = null,
  }) {
    return _then(_$FinanceStatsImpl(
      totalIncome: null == totalIncome
          ? _value.totalIncome
          : totalIncome // ignore: cast_nullable_to_non_nullable
              as double,
      totalExpense: null == totalExpense
          ? _value.totalExpense
          : totalExpense // ignore: cast_nullable_to_non_nullable
              as double,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      transactionCount: null == transactionCount
          ? _value.transactionCount
          : transactionCount // ignore: cast_nullable_to_non_nullable
              as int,
      incomeByCategory: null == incomeByCategory
          ? _value._incomeByCategory
          : incomeByCategory // ignore: cast_nullable_to_non_nullable
              as List<CategoryAmount>,
      expenseByCategory: null == expenseByCategory
          ? _value._expenseByCategory
          : expenseByCategory // ignore: cast_nullable_to_non_nullable
              as List<CategoryAmount>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FinanceStatsImpl implements _FinanceStats {
  const _$FinanceStatsImpl(
      {@JsonKey(name: 'total_income') this.totalIncome = 0.0,
      @JsonKey(name: 'total_expense') this.totalExpense = 0.0,
      this.balance = 0.0,
      @JsonKey(name: 'transaction_count') this.transactionCount = 0,
      @JsonKey(name: 'income_by_category')
      final List<CategoryAmount> incomeByCategory = const [],
      @JsonKey(name: 'expense_by_category')
      final List<CategoryAmount> expenseByCategory = const []})
      : _incomeByCategory = incomeByCategory,
        _expenseByCategory = expenseByCategory;

  factory _$FinanceStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$FinanceStatsImplFromJson(json);

  @override
  @JsonKey(name: 'total_income')
  final double totalIncome;
  @override
  @JsonKey(name: 'total_expense')
  final double totalExpense;
  @override
  @JsonKey()
  final double balance;
  @override
  @JsonKey(name: 'transaction_count')
  final int transactionCount;
  final List<CategoryAmount> _incomeByCategory;
  @override
  @JsonKey(name: 'income_by_category')
  List<CategoryAmount> get incomeByCategory {
    if (_incomeByCategory is EqualUnmodifiableListView)
      return _incomeByCategory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_incomeByCategory);
  }

  final List<CategoryAmount> _expenseByCategory;
  @override
  @JsonKey(name: 'expense_by_category')
  List<CategoryAmount> get expenseByCategory {
    if (_expenseByCategory is EqualUnmodifiableListView)
      return _expenseByCategory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_expenseByCategory);
  }

  @override
  String toString() {
    return 'FinanceStats(totalIncome: $totalIncome, totalExpense: $totalExpense, balance: $balance, transactionCount: $transactionCount, incomeByCategory: $incomeByCategory, expenseByCategory: $expenseByCategory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinanceStatsImpl &&
            (identical(other.totalIncome, totalIncome) ||
                other.totalIncome == totalIncome) &&
            (identical(other.totalExpense, totalExpense) ||
                other.totalExpense == totalExpense) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.transactionCount, transactionCount) ||
                other.transactionCount == transactionCount) &&
            const DeepCollectionEquality()
                .equals(other._incomeByCategory, _incomeByCategory) &&
            const DeepCollectionEquality()
                .equals(other._expenseByCategory, _expenseByCategory));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      totalIncome,
      totalExpense,
      balance,
      transactionCount,
      const DeepCollectionEquality().hash(_incomeByCategory),
      const DeepCollectionEquality().hash(_expenseByCategory));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinanceStatsImplCopyWith<_$FinanceStatsImpl> get copyWith =>
      __$$FinanceStatsImplCopyWithImpl<_$FinanceStatsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FinanceStatsImplToJson(
      this,
    );
  }
}

abstract class _FinanceStats implements FinanceStats {
  const factory _FinanceStats(
      {@JsonKey(name: 'total_income') final double totalIncome,
      @JsonKey(name: 'total_expense') final double totalExpense,
      final double balance,
      @JsonKey(name: 'transaction_count') final int transactionCount,
      @JsonKey(name: 'income_by_category')
      final List<CategoryAmount> incomeByCategory,
      @JsonKey(name: 'expense_by_category')
      final List<CategoryAmount> expenseByCategory}) = _$FinanceStatsImpl;

  factory _FinanceStats.fromJson(Map<String, dynamic> json) =
      _$FinanceStatsImpl.fromJson;

  @override
  @JsonKey(name: 'total_income')
  double get totalIncome;
  @override
  @JsonKey(name: 'total_expense')
  double get totalExpense;
  @override
  double get balance;
  @override
  @JsonKey(name: 'transaction_count')
  int get transactionCount;
  @override
  @JsonKey(name: 'income_by_category')
  List<CategoryAmount> get incomeByCategory;
  @override
  @JsonKey(name: 'expense_by_category')
  List<CategoryAmount> get expenseByCategory;
  @override
  @JsonKey(ignore: true)
  _$$FinanceStatsImplCopyWith<_$FinanceStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryAmount _$CategoryAmountFromJson(Map<String, dynamic> json) {
  return _CategoryAmount.fromJson(json);
}

/// @nodoc
mixin _$CategoryAmount {
  @JsonKey(name: 'category_name')
  String get categoryName => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryAmountCopyWith<CategoryAmount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryAmountCopyWith<$Res> {
  factory $CategoryAmountCopyWith(
          CategoryAmount value, $Res Function(CategoryAmount) then) =
      _$CategoryAmountCopyWithImpl<$Res, CategoryAmount>;
  @useResult
  $Res call(
      {@JsonKey(name: 'category_name') String categoryName, double amount});
}

/// @nodoc
class _$CategoryAmountCopyWithImpl<$Res, $Val extends CategoryAmount>
    implements $CategoryAmountCopyWith<$Res> {
  _$CategoryAmountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryName = null,
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryAmountImplCopyWith<$Res>
    implements $CategoryAmountCopyWith<$Res> {
  factory _$$CategoryAmountImplCopyWith(_$CategoryAmountImpl value,
          $Res Function(_$CategoryAmountImpl) then) =
      __$$CategoryAmountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'category_name') String categoryName, double amount});
}

/// @nodoc
class __$$CategoryAmountImplCopyWithImpl<$Res>
    extends _$CategoryAmountCopyWithImpl<$Res, _$CategoryAmountImpl>
    implements _$$CategoryAmountImplCopyWith<$Res> {
  __$$CategoryAmountImplCopyWithImpl(
      _$CategoryAmountImpl _value, $Res Function(_$CategoryAmountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryName = null,
    Object? amount = null,
  }) {
    return _then(_$CategoryAmountImpl(
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryAmountImpl implements _CategoryAmount {
  const _$CategoryAmountImpl(
      {@JsonKey(name: 'category_name') required this.categoryName,
      required this.amount});

  factory _$CategoryAmountImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryAmountImplFromJson(json);

  @override
  @JsonKey(name: 'category_name')
  final String categoryName;
  @override
  final double amount;

  @override
  String toString() {
    return 'CategoryAmount(categoryName: $categoryName, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryAmountImpl &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, categoryName, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryAmountImplCopyWith<_$CategoryAmountImpl> get copyWith =>
      __$$CategoryAmountImplCopyWithImpl<_$CategoryAmountImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryAmountImplToJson(
      this,
    );
  }
}

abstract class _CategoryAmount implements CategoryAmount {
  const factory _CategoryAmount(
      {@JsonKey(name: 'category_name') required final String categoryName,
      required final double amount}) = _$CategoryAmountImpl;

  factory _CategoryAmount.fromJson(Map<String, dynamic> json) =
      _$CategoryAmountImpl.fromJson;

  @override
  @JsonKey(name: 'category_name')
  String get categoryName;
  @override
  double get amount;
  @override
  @JsonKey(ignore: true)
  _$$CategoryAmountImplCopyWith<_$CategoryAmountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateTransactionRequest _$CreateTransactionRequestFromJson(
    Map<String, dynamic> json) {
  return _CreateTransactionRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateTransactionRequest {
  String get type => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_id')
  int get categoryId => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateTransactionRequestCopyWith<CreateTransactionRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTransactionRequestCopyWith<$Res> {
  factory $CreateTransactionRequestCopyWith(CreateTransactionRequest value,
          $Res Function(CreateTransactionRequest) then) =
      _$CreateTransactionRequestCopyWithImpl<$Res, CreateTransactionRequest>;
  @useResult
  $Res call(
      {String type,
      double amount,
      @JsonKey(name: 'category_id') int categoryId,
      String? description,
      String date});
}

/// @nodoc
class _$CreateTransactionRequestCopyWithImpl<$Res,
        $Val extends CreateTransactionRequest>
    implements $CreateTransactionRequestCopyWith<$Res> {
  _$CreateTransactionRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? amount = null,
    Object? categoryId = null,
    Object? description = freezed,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateTransactionRequestImplCopyWith<$Res>
    implements $CreateTransactionRequestCopyWith<$Res> {
  factory _$$CreateTransactionRequestImplCopyWith(
          _$CreateTransactionRequestImpl value,
          $Res Function(_$CreateTransactionRequestImpl) then) =
      __$$CreateTransactionRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String type,
      double amount,
      @JsonKey(name: 'category_id') int categoryId,
      String? description,
      String date});
}

/// @nodoc
class __$$CreateTransactionRequestImplCopyWithImpl<$Res>
    extends _$CreateTransactionRequestCopyWithImpl<$Res,
        _$CreateTransactionRequestImpl>
    implements _$$CreateTransactionRequestImplCopyWith<$Res> {
  __$$CreateTransactionRequestImplCopyWithImpl(
      _$CreateTransactionRequestImpl _value,
      $Res Function(_$CreateTransactionRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? amount = null,
    Object? categoryId = null,
    Object? description = freezed,
    Object? date = null,
  }) {
    return _then(_$CreateTransactionRequestImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateTransactionRequestImpl implements _CreateTransactionRequest {
  const _$CreateTransactionRequestImpl(
      {required this.type,
      required this.amount,
      @JsonKey(name: 'category_id') required this.categoryId,
      this.description,
      required this.date});

  factory _$CreateTransactionRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateTransactionRequestImplFromJson(json);

  @override
  final String type;
  @override
  final double amount;
  @override
  @JsonKey(name: 'category_id')
  final int categoryId;
  @override
  final String? description;
  @override
  final String date;

  @override
  String toString() {
    return 'CreateTransactionRequest(type: $type, amount: $amount, categoryId: $categoryId, description: $description, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTransactionRequestImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, type, amount, categoryId, description, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTransactionRequestImplCopyWith<_$CreateTransactionRequestImpl>
      get copyWith => __$$CreateTransactionRequestImplCopyWithImpl<
          _$CreateTransactionRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateTransactionRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateTransactionRequest implements CreateTransactionRequest {
  const factory _CreateTransactionRequest(
      {required final String type,
      required final double amount,
      @JsonKey(name: 'category_id') required final int categoryId,
      final String? description,
      required final String date}) = _$CreateTransactionRequestImpl;

  factory _CreateTransactionRequest.fromJson(Map<String, dynamic> json) =
      _$CreateTransactionRequestImpl.fromJson;

  @override
  String get type;
  @override
  double get amount;
  @override
  @JsonKey(name: 'category_id')
  int get categoryId;
  @override
  String? get description;
  @override
  String get date;
  @override
  @JsonKey(ignore: true)
  _$$CreateTransactionRequestImplCopyWith<_$CreateTransactionRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateTransactionRequest _$UpdateTransactionRequestFromJson(
    Map<String, dynamic> json) {
  return _UpdateTransactionRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateTransactionRequest {
  String? get type => throw _privateConstructorUsedError;
  double? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_id')
  int? get categoryId => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateTransactionRequestCopyWith<UpdateTransactionRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateTransactionRequestCopyWith<$Res> {
  factory $UpdateTransactionRequestCopyWith(UpdateTransactionRequest value,
          $Res Function(UpdateTransactionRequest) then) =
      _$UpdateTransactionRequestCopyWithImpl<$Res, UpdateTransactionRequest>;
  @useResult
  $Res call(
      {String? type,
      double? amount,
      @JsonKey(name: 'category_id') int? categoryId,
      String? description,
      String? date});
}

/// @nodoc
class _$UpdateTransactionRequestCopyWithImpl<$Res,
        $Val extends UpdateTransactionRequest>
    implements $UpdateTransactionRequestCopyWith<$Res> {
  _$UpdateTransactionRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? amount = freezed,
    Object? categoryId = freezed,
    Object? description = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateTransactionRequestImplCopyWith<$Res>
    implements $UpdateTransactionRequestCopyWith<$Res> {
  factory _$$UpdateTransactionRequestImplCopyWith(
          _$UpdateTransactionRequestImpl value,
          $Res Function(_$UpdateTransactionRequestImpl) then) =
      __$$UpdateTransactionRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? type,
      double? amount,
      @JsonKey(name: 'category_id') int? categoryId,
      String? description,
      String? date});
}

/// @nodoc
class __$$UpdateTransactionRequestImplCopyWithImpl<$Res>
    extends _$UpdateTransactionRequestCopyWithImpl<$Res,
        _$UpdateTransactionRequestImpl>
    implements _$$UpdateTransactionRequestImplCopyWith<$Res> {
  __$$UpdateTransactionRequestImplCopyWithImpl(
      _$UpdateTransactionRequestImpl _value,
      $Res Function(_$UpdateTransactionRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? amount = freezed,
    Object? categoryId = freezed,
    Object? description = freezed,
    Object? date = freezed,
  }) {
    return _then(_$UpdateTransactionRequestImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateTransactionRequestImpl implements _UpdateTransactionRequest {
  const _$UpdateTransactionRequestImpl(
      {this.type,
      this.amount,
      @JsonKey(name: 'category_id') this.categoryId,
      this.description,
      this.date});

  factory _$UpdateTransactionRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateTransactionRequestImplFromJson(json);

  @override
  final String? type;
  @override
  final double? amount;
  @override
  @JsonKey(name: 'category_id')
  final int? categoryId;
  @override
  final String? description;
  @override
  final String? date;

  @override
  String toString() {
    return 'UpdateTransactionRequest(type: $type, amount: $amount, categoryId: $categoryId, description: $description, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTransactionRequestImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, type, amount, categoryId, description, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTransactionRequestImplCopyWith<_$UpdateTransactionRequestImpl>
      get copyWith => __$$UpdateTransactionRequestImplCopyWithImpl<
          _$UpdateTransactionRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateTransactionRequestImplToJson(
      this,
    );
  }
}

abstract class _UpdateTransactionRequest implements UpdateTransactionRequest {
  const factory _UpdateTransactionRequest(
      {final String? type,
      final double? amount,
      @JsonKey(name: 'category_id') final int? categoryId,
      final String? description,
      final String? date}) = _$UpdateTransactionRequestImpl;

  factory _UpdateTransactionRequest.fromJson(Map<String, dynamic> json) =
      _$UpdateTransactionRequestImpl.fromJson;

  @override
  String? get type;
  @override
  double? get amount;
  @override
  @JsonKey(name: 'category_id')
  int? get categoryId;
  @override
  String? get description;
  @override
  String? get date;
  @override
  @JsonKey(ignore: true)
  _$$UpdateTransactionRequestImplCopyWith<_$UpdateTransactionRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CreateCategoryRequest _$CreateCategoryRequestFromJson(
    Map<String, dynamic> json) {
  return _CreateCategoryRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateCategoryRequest {
  String get name => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateCategoryRequestCopyWith<CreateCategoryRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateCategoryRequestCopyWith<$Res> {
  factory $CreateCategoryRequestCopyWith(CreateCategoryRequest value,
          $Res Function(CreateCategoryRequest) then) =
      _$CreateCategoryRequestCopyWithImpl<$Res, CreateCategoryRequest>;
  @useResult
  $Res call({String name, String? icon, String? color, String type});
}

/// @nodoc
class _$CreateCategoryRequestCopyWithImpl<$Res,
        $Val extends CreateCategoryRequest>
    implements $CreateCategoryRequestCopyWith<$Res> {
  _$CreateCategoryRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? icon = freezed,
    Object? color = freezed,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateCategoryRequestImplCopyWith<$Res>
    implements $CreateCategoryRequestCopyWith<$Res> {
  factory _$$CreateCategoryRequestImplCopyWith(
          _$CreateCategoryRequestImpl value,
          $Res Function(_$CreateCategoryRequestImpl) then) =
      __$$CreateCategoryRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String? icon, String? color, String type});
}

/// @nodoc
class __$$CreateCategoryRequestImplCopyWithImpl<$Res>
    extends _$CreateCategoryRequestCopyWithImpl<$Res,
        _$CreateCategoryRequestImpl>
    implements _$$CreateCategoryRequestImplCopyWith<$Res> {
  __$$CreateCategoryRequestImplCopyWithImpl(_$CreateCategoryRequestImpl _value,
      $Res Function(_$CreateCategoryRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? icon = freezed,
    Object? color = freezed,
    Object? type = null,
  }) {
    return _then(_$CreateCategoryRequestImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateCategoryRequestImpl implements _CreateCategoryRequest {
  const _$CreateCategoryRequestImpl(
      {required this.name, this.icon, this.color, required this.type});

  factory _$CreateCategoryRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateCategoryRequestImplFromJson(json);

  @override
  final String name;
  @override
  final String? icon;
  @override
  final String? color;
  @override
  final String type;

  @override
  String toString() {
    return 'CreateCategoryRequest(name: $name, icon: $icon, color: $color, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateCategoryRequestImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, icon, color, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateCategoryRequestImplCopyWith<_$CreateCategoryRequestImpl>
      get copyWith => __$$CreateCategoryRequestImplCopyWithImpl<
          _$CreateCategoryRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateCategoryRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateCategoryRequest implements CreateCategoryRequest {
  const factory _CreateCategoryRequest(
      {required final String name,
      final String? icon,
      final String? color,
      required final String type}) = _$CreateCategoryRequestImpl;

  factory _CreateCategoryRequest.fromJson(Map<String, dynamic> json) =
      _$CreateCategoryRequestImpl.fromJson;

  @override
  String get name;
  @override
  String? get icon;
  @override
  String? get color;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$CreateCategoryRequestImplCopyWith<_$CreateCategoryRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
