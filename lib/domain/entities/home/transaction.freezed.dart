// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Transaction {
  int? get id => throw _privateConstructorUsedError;
  int? get transactionId => throw _privateConstructorUsedError;
  int? get productId => throw _privateConstructorUsedError;
  int? get consignmentProdutId => throw _privateConstructorUsedError;
  double? get sellPrice => throw _privateConstructorUsedError;
  double? get buyPrice => throw _privateConstructorUsedError;
  int? get qty => throw _privateConstructorUsedError;
  double? get discount => throw _privateConstructorUsedError;
  double? get ppn => throw _privateConstructorUsedError;
  double? get subtotal => throw _privateConstructorUsedError;
  double? get isConsignmentPaid => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String? get totalQty => throw _privateConstructorUsedError;
  Product? get product => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransactionCopyWith<Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionCopyWith<$Res> {
  factory $TransactionCopyWith(
          Transaction value, $Res Function(Transaction) then) =
      _$TransactionCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      int? transactionId,
      int? productId,
      int? consignmentProdutId,
      double? sellPrice,
      double? buyPrice,
      int? qty,
      double? discount,
      double? ppn,
      double? subtotal,
      double? isConsignmentPaid,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? totalQty,
      Product? product});

  $ProductCopyWith<$Res>? get product;
}

/// @nodoc
class _$TransactionCopyWithImpl<$Res> implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._value, this._then);

  final Transaction _value;
  // ignore: unused_field
  final $Res Function(Transaction) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? transactionId = freezed,
    Object? productId = freezed,
    Object? consignmentProdutId = freezed,
    Object? sellPrice = freezed,
    Object? buyPrice = freezed,
    Object? qty = freezed,
    Object? discount = freezed,
    Object? ppn = freezed,
    Object? subtotal = freezed,
    Object? isConsignmentPaid = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? totalQty = freezed,
    Object? product = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      transactionId: transactionId == freezed
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as int?,
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int?,
      consignmentProdutId: consignmentProdutId == freezed
          ? _value.consignmentProdutId
          : consignmentProdutId // ignore: cast_nullable_to_non_nullable
              as int?,
      sellPrice: sellPrice == freezed
          ? _value.sellPrice
          : sellPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      buyPrice: buyPrice == freezed
          ? _value.buyPrice
          : buyPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      qty: qty == freezed
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      ppn: ppn == freezed
          ? _value.ppn
          : ppn // ignore: cast_nullable_to_non_nullable
              as double?,
      subtotal: subtotal == freezed
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as double?,
      isConsignmentPaid: isConsignmentPaid == freezed
          ? _value.isConsignmentPaid
          : isConsignmentPaid // ignore: cast_nullable_to_non_nullable
              as double?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      totalQty: totalQty == freezed
          ? _value.totalQty
          : totalQty // ignore: cast_nullable_to_non_nullable
              as String?,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
    ));
  }

  @override
  $ProductCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProductCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc
abstract class _$$_TransactionCopyWith<$Res>
    implements $TransactionCopyWith<$Res> {
  factory _$$_TransactionCopyWith(
          _$_Transaction value, $Res Function(_$_Transaction) then) =
      __$$_TransactionCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      int? transactionId,
      int? productId,
      int? consignmentProdutId,
      double? sellPrice,
      double? buyPrice,
      int? qty,
      double? discount,
      double? ppn,
      double? subtotal,
      double? isConsignmentPaid,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? totalQty,
      Product? product});

  @override
  $ProductCopyWith<$Res>? get product;
}

/// @nodoc
class __$$_TransactionCopyWithImpl<$Res> extends _$TransactionCopyWithImpl<$Res>
    implements _$$_TransactionCopyWith<$Res> {
  __$$_TransactionCopyWithImpl(
      _$_Transaction _value, $Res Function(_$_Transaction) _then)
      : super(_value, (v) => _then(v as _$_Transaction));

  @override
  _$_Transaction get _value => super._value as _$_Transaction;

  @override
  $Res call({
    Object? id = freezed,
    Object? transactionId = freezed,
    Object? productId = freezed,
    Object? consignmentProdutId = freezed,
    Object? sellPrice = freezed,
    Object? buyPrice = freezed,
    Object? qty = freezed,
    Object? discount = freezed,
    Object? ppn = freezed,
    Object? subtotal = freezed,
    Object? isConsignmentPaid = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? totalQty = freezed,
    Object? product = freezed,
  }) {
    return _then(_$_Transaction(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      transactionId: transactionId == freezed
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as int?,
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int?,
      consignmentProdutId: consignmentProdutId == freezed
          ? _value.consignmentProdutId
          : consignmentProdutId // ignore: cast_nullable_to_non_nullable
              as int?,
      sellPrice: sellPrice == freezed
          ? _value.sellPrice
          : sellPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      buyPrice: buyPrice == freezed
          ? _value.buyPrice
          : buyPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      qty: qty == freezed
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      ppn: ppn == freezed
          ? _value.ppn
          : ppn // ignore: cast_nullable_to_non_nullable
              as double?,
      subtotal: subtotal == freezed
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as double?,
      isConsignmentPaid: isConsignmentPaid == freezed
          ? _value.isConsignmentPaid
          : isConsignmentPaid // ignore: cast_nullable_to_non_nullable
              as double?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      totalQty: totalQty == freezed
          ? _value.totalQty
          : totalQty // ignore: cast_nullable_to_non_nullable
              as String?,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
    ));
  }
}

/// @nodoc

class _$_Transaction implements _Transaction {
  const _$_Transaction(
      {required this.id,
      required this.transactionId,
      required this.productId,
      required this.consignmentProdutId,
      required this.sellPrice,
      required this.buyPrice,
      required this.qty,
      required this.discount,
      required this.ppn,
      required this.subtotal,
      required this.isConsignmentPaid,
      required this.createdAt,
      required this.updatedAt,
      required this.totalQty,
      required this.product});

  @override
  final int? id;
  @override
  final int? transactionId;
  @override
  final int? productId;
  @override
  final int? consignmentProdutId;
  @override
  final double? sellPrice;
  @override
  final double? buyPrice;
  @override
  final int? qty;
  @override
  final double? discount;
  @override
  final double? ppn;
  @override
  final double? subtotal;
  @override
  final double? isConsignmentPaid;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final String? totalQty;
  @override
  final Product? product;

  @override
  String toString() {
    return 'Transaction(id: $id, transactionId: $transactionId, productId: $productId, consignmentProdutId: $consignmentProdutId, sellPrice: $sellPrice, buyPrice: $buyPrice, qty: $qty, discount: $discount, ppn: $ppn, subtotal: $subtotal, isConsignmentPaid: $isConsignmentPaid, createdAt: $createdAt, updatedAt: $updatedAt, totalQty: $totalQty, product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Transaction &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.transactionId, transactionId) &&
            const DeepCollectionEquality().equals(other.productId, productId) &&
            const DeepCollectionEquality()
                .equals(other.consignmentProdutId, consignmentProdutId) &&
            const DeepCollectionEquality().equals(other.sellPrice, sellPrice) &&
            const DeepCollectionEquality().equals(other.buyPrice, buyPrice) &&
            const DeepCollectionEquality().equals(other.qty, qty) &&
            const DeepCollectionEquality().equals(other.discount, discount) &&
            const DeepCollectionEquality().equals(other.ppn, ppn) &&
            const DeepCollectionEquality().equals(other.subtotal, subtotal) &&
            const DeepCollectionEquality()
                .equals(other.isConsignmentPaid, isConsignmentPaid) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.totalQty, totalQty) &&
            const DeepCollectionEquality().equals(other.product, product));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(transactionId),
      const DeepCollectionEquality().hash(productId),
      const DeepCollectionEquality().hash(consignmentProdutId),
      const DeepCollectionEquality().hash(sellPrice),
      const DeepCollectionEquality().hash(buyPrice),
      const DeepCollectionEquality().hash(qty),
      const DeepCollectionEquality().hash(discount),
      const DeepCollectionEquality().hash(ppn),
      const DeepCollectionEquality().hash(subtotal),
      const DeepCollectionEquality().hash(isConsignmentPaid),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(totalQty),
      const DeepCollectionEquality().hash(product));

  @JsonKey(ignore: true)
  @override
  _$$_TransactionCopyWith<_$_Transaction> get copyWith =>
      __$$_TransactionCopyWithImpl<_$_Transaction>(this, _$identity);
}

abstract class _Transaction implements Transaction {
  const factory _Transaction(
      {required final int? id,
      required final int? transactionId,
      required final int? productId,
      required final int? consignmentProdutId,
      required final double? sellPrice,
      required final double? buyPrice,
      required final int? qty,
      required final double? discount,
      required final double? ppn,
      required final double? subtotal,
      required final double? isConsignmentPaid,
      required final DateTime? createdAt,
      required final DateTime? updatedAt,
      required final String? totalQty,
      required final Product? product}) = _$_Transaction;

  @override
  int? get id;
  @override
  int? get transactionId;
  @override
  int? get productId;
  @override
  int? get consignmentProdutId;
  @override
  double? get sellPrice;
  @override
  double? get buyPrice;
  @override
  int? get qty;
  @override
  double? get discount;
  @override
  double? get ppn;
  @override
  double? get subtotal;
  @override
  double? get isConsignmentPaid;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  String? get totalQty;
  @override
  Product? get product;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionCopyWith<_$_Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}
