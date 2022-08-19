// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'transaction_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransactionResponse _$TransactionResponseFromJson(Map<String, dynamic> json) {
  return _TransactionResponse.fromJson(json);
}

/// @nodoc
class _$TransactionResponseTearOff {
  const _$TransactionResponseTearOff();

  _TransactionResponse call(
      {required int? id,
      @JsonKey(name: 'transaction_id')
          required int? transactionId,
      @JsonKey(name: 'product_id')
          required int? productId,
      @JsonKey(name: 'consignment_product_id')
          required int? consignmentProdutId,
      @JsonKey(name: 'sell_price')
          required double? sellPrice,
      @JsonKey(name: 'buy_price')
          required double? buyPrice,
      required int? qty,
      required double? discount,
      required double? ppn,
      required double? subtotal,
      @JsonKey(name: 'is_consignment_paid')
          required double? isConsignmentPaid,
      @JsonKey(name: 'created_at')
          required DateTime? createdAt,
      @JsonKey(name: 'updated_at')
          required DateTime? updatedAt,
      @JsonKey(name: 'total_quantity')
          required String? totalQty,
      required ProductResponse? product}) {
    return _TransactionResponse(
      id: id,
      transactionId: transactionId,
      productId: productId,
      consignmentProdutId: consignmentProdutId,
      sellPrice: sellPrice,
      buyPrice: buyPrice,
      qty: qty,
      discount: discount,
      ppn: ppn,
      subtotal: subtotal,
      isConsignmentPaid: isConsignmentPaid,
      createdAt: createdAt,
      updatedAt: updatedAt,
      totalQty: totalQty,
      product: product,
    );
  }

  TransactionResponse fromJson(Map<String, Object?> json) {
    return TransactionResponse.fromJson(json);
  }
}

/// @nodoc
const $TransactionResponse = _$TransactionResponseTearOff();

/// @nodoc
mixin _$TransactionResponse {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'transaction_id')
  int? get transactionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_id')
  int? get productId => throw _privateConstructorUsedError;
  @JsonKey(name: 'consignment_product_id')
  int? get consignmentProdutId => throw _privateConstructorUsedError;
  @JsonKey(name: 'sell_price')
  double? get sellPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'buy_price')
  double? get buyPrice => throw _privateConstructorUsedError;
  int? get qty => throw _privateConstructorUsedError;
  double? get discount => throw _privateConstructorUsedError;
  double? get ppn => throw _privateConstructorUsedError;
  double? get subtotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_consignment_paid')
  double? get isConsignmentPaid => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_quantity')
  String? get totalQty => throw _privateConstructorUsedError;
  ProductResponse? get product => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionResponseCopyWith<TransactionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionResponseCopyWith<$Res> {
  factory $TransactionResponseCopyWith(
          TransactionResponse value, $Res Function(TransactionResponse) then) =
      _$TransactionResponseCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      @JsonKey(name: 'transaction_id') int? transactionId,
      @JsonKey(name: 'product_id') int? productId,
      @JsonKey(name: 'consignment_product_id') int? consignmentProdutId,
      @JsonKey(name: 'sell_price') double? sellPrice,
      @JsonKey(name: 'buy_price') double? buyPrice,
      int? qty,
      double? discount,
      double? ppn,
      double? subtotal,
      @JsonKey(name: 'is_consignment_paid') double? isConsignmentPaid,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'total_quantity') String? totalQty,
      ProductResponse? product});

  $ProductResponseCopyWith<$Res>? get product;
}

/// @nodoc
class _$TransactionResponseCopyWithImpl<$Res>
    implements $TransactionResponseCopyWith<$Res> {
  _$TransactionResponseCopyWithImpl(this._value, this._then);

  final TransactionResponse _value;
  // ignore: unused_field
  final $Res Function(TransactionResponse) _then;

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
              as ProductResponse?,
    ));
  }

  @override
  $ProductResponseCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProductResponseCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc
abstract class _$TransactionResponseCopyWith<$Res>
    implements $TransactionResponseCopyWith<$Res> {
  factory _$TransactionResponseCopyWith(_TransactionResponse value,
          $Res Function(_TransactionResponse) then) =
      __$TransactionResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      @JsonKey(name: 'transaction_id') int? transactionId,
      @JsonKey(name: 'product_id') int? productId,
      @JsonKey(name: 'consignment_product_id') int? consignmentProdutId,
      @JsonKey(name: 'sell_price') double? sellPrice,
      @JsonKey(name: 'buy_price') double? buyPrice,
      int? qty,
      double? discount,
      double? ppn,
      double? subtotal,
      @JsonKey(name: 'is_consignment_paid') double? isConsignmentPaid,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'total_quantity') String? totalQty,
      ProductResponse? product});

  @override
  $ProductResponseCopyWith<$Res>? get product;
}

/// @nodoc
class __$TransactionResponseCopyWithImpl<$Res>
    extends _$TransactionResponseCopyWithImpl<$Res>
    implements _$TransactionResponseCopyWith<$Res> {
  __$TransactionResponseCopyWithImpl(
      _TransactionResponse _value, $Res Function(_TransactionResponse) _then)
      : super(_value, (v) => _then(v as _TransactionResponse));

  @override
  _TransactionResponse get _value => super._value as _TransactionResponse;

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
    return _then(_TransactionResponse(
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
              as ProductResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransactionResponse extends _TransactionResponse {
  const _$_TransactionResponse(
      {required this.id,
      @JsonKey(name: 'transaction_id')
          required this.transactionId,
      @JsonKey(name: 'product_id')
          required this.productId,
      @JsonKey(name: 'consignment_product_id')
          required this.consignmentProdutId,
      @JsonKey(name: 'sell_price')
          required this.sellPrice,
      @JsonKey(name: 'buy_price')
          required this.buyPrice,
      required this.qty,
      required this.discount,
      required this.ppn,
      required this.subtotal,
      @JsonKey(name: 'is_consignment_paid')
          required this.isConsignmentPaid,
      @JsonKey(name: 'created_at')
          required this.createdAt,
      @JsonKey(name: 'updated_at')
          required this.updatedAt,
      @JsonKey(name: 'total_quantity')
          required this.totalQty,
      required this.product})
      : super._();

  factory _$_TransactionResponse.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionResponseFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'transaction_id')
  final int? transactionId;
  @override
  @JsonKey(name: 'product_id')
  final int? productId;
  @override
  @JsonKey(name: 'consignment_product_id')
  final int? consignmentProdutId;
  @override
  @JsonKey(name: 'sell_price')
  final double? sellPrice;
  @override
  @JsonKey(name: 'buy_price')
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
  @JsonKey(name: 'is_consignment_paid')
  final double? isConsignmentPaid;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'total_quantity')
  final String? totalQty;
  @override
  final ProductResponse? product;

  @override
  String toString() {
    return 'TransactionResponse(id: $id, transactionId: $transactionId, productId: $productId, consignmentProdutId: $consignmentProdutId, sellPrice: $sellPrice, buyPrice: $buyPrice, qty: $qty, discount: $discount, ppn: $ppn, subtotal: $subtotal, isConsignmentPaid: $isConsignmentPaid, createdAt: $createdAt, updatedAt: $updatedAt, totalQty: $totalQty, product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TransactionResponse &&
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
  _$TransactionResponseCopyWith<_TransactionResponse> get copyWith =>
      __$TransactionResponseCopyWithImpl<_TransactionResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionResponseToJson(this);
  }
}

abstract class _TransactionResponse extends TransactionResponse {
  const factory _TransactionResponse(
      {required int? id,
      @JsonKey(name: 'transaction_id')
          required int? transactionId,
      @JsonKey(name: 'product_id')
          required int? productId,
      @JsonKey(name: 'consignment_product_id')
          required int? consignmentProdutId,
      @JsonKey(name: 'sell_price')
          required double? sellPrice,
      @JsonKey(name: 'buy_price')
          required double? buyPrice,
      required int? qty,
      required double? discount,
      required double? ppn,
      required double? subtotal,
      @JsonKey(name: 'is_consignment_paid')
          required double? isConsignmentPaid,
      @JsonKey(name: 'created_at')
          required DateTime? createdAt,
      @JsonKey(name: 'updated_at')
          required DateTime? updatedAt,
      @JsonKey(name: 'total_quantity')
          required String? totalQty,
      required ProductResponse? product}) = _$_TransactionResponse;
  const _TransactionResponse._() : super._();

  factory _TransactionResponse.fromJson(Map<String, dynamic> json) =
      _$_TransactionResponse.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'transaction_id')
  int? get transactionId;
  @override
  @JsonKey(name: 'product_id')
  int? get productId;
  @override
  @JsonKey(name: 'consignment_product_id')
  int? get consignmentProdutId;
  @override
  @JsonKey(name: 'sell_price')
  double? get sellPrice;
  @override
  @JsonKey(name: 'buy_price')
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
  @JsonKey(name: 'is_consignment_paid')
  double? get isConsignmentPaid;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'total_quantity')
  String? get totalQty;
  @override
  ProductResponse? get product;
  @override
  @JsonKey(ignore: true)
  _$TransactionResponseCopyWith<_TransactionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
