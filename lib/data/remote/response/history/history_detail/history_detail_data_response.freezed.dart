// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'history_detail_data_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HistoryDetailDataResponse _$HistoryDetailDataResponseFromJson(
    Map<String, dynamic> json) {
  return _HistoryDetailDataResponse.fromJson(json);
}

/// @nodoc
mixin _$HistoryDetailDataResponse {
  SalesResponse get transaction => throw _privateConstructorUsedError;
  List<HistoryDetailDataProductResponse> get transactionProduct =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HistoryDetailDataResponseCopyWith<HistoryDetailDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryDetailDataResponseCopyWith<$Res> {
  factory $HistoryDetailDataResponseCopyWith(HistoryDetailDataResponse value,
          $Res Function(HistoryDetailDataResponse) then) =
      _$HistoryDetailDataResponseCopyWithImpl<$Res>;
  $Res call(
      {SalesResponse transaction,
      List<HistoryDetailDataProductResponse> transactionProduct});

  $SalesResponseCopyWith<$Res> get transaction;
}

/// @nodoc
class _$HistoryDetailDataResponseCopyWithImpl<$Res>
    implements $HistoryDetailDataResponseCopyWith<$Res> {
  _$HistoryDetailDataResponseCopyWithImpl(this._value, this._then);

  final HistoryDetailDataResponse _value;
  // ignore: unused_field
  final $Res Function(HistoryDetailDataResponse) _then;

  @override
  $Res call({
    Object? transaction = freezed,
    Object? transactionProduct = freezed,
  }) {
    return _then(_value.copyWith(
      transaction: transaction == freezed
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as SalesResponse,
      transactionProduct: transactionProduct == freezed
          ? _value.transactionProduct
          : transactionProduct // ignore: cast_nullable_to_non_nullable
              as List<HistoryDetailDataProductResponse>,
    ));
  }

  @override
  $SalesResponseCopyWith<$Res> get transaction {
    return $SalesResponseCopyWith<$Res>(_value.transaction, (value) {
      return _then(_value.copyWith(transaction: value));
    });
  }
}

/// @nodoc
abstract class _$$_HistoryDetailDataResponseCopyWith<$Res>
    implements $HistoryDetailDataResponseCopyWith<$Res> {
  factory _$$_HistoryDetailDataResponseCopyWith(
          _$_HistoryDetailDataResponse value,
          $Res Function(_$_HistoryDetailDataResponse) then) =
      __$$_HistoryDetailDataResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {SalesResponse transaction,
      List<HistoryDetailDataProductResponse> transactionProduct});

  @override
  $SalesResponseCopyWith<$Res> get transaction;
}

/// @nodoc
class __$$_HistoryDetailDataResponseCopyWithImpl<$Res>
    extends _$HistoryDetailDataResponseCopyWithImpl<$Res>
    implements _$$_HistoryDetailDataResponseCopyWith<$Res> {
  __$$_HistoryDetailDataResponseCopyWithImpl(
      _$_HistoryDetailDataResponse _value,
      $Res Function(_$_HistoryDetailDataResponse) _then)
      : super(_value, (v) => _then(v as _$_HistoryDetailDataResponse));

  @override
  _$_HistoryDetailDataResponse get _value =>
      super._value as _$_HistoryDetailDataResponse;

  @override
  $Res call({
    Object? transaction = freezed,
    Object? transactionProduct = freezed,
  }) {
    return _then(_$_HistoryDetailDataResponse(
      transaction: transaction == freezed
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as SalesResponse,
      transactionProduct: transactionProduct == freezed
          ? _value._transactionProduct
          : transactionProduct // ignore: cast_nullable_to_non_nullable
              as List<HistoryDetailDataProductResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HistoryDetailDataResponse extends _HistoryDetailDataResponse {
  const _$_HistoryDetailDataResponse(
      {required this.transaction,
      required final List<HistoryDetailDataProductResponse> transactionProduct})
      : _transactionProduct = transactionProduct,
        super._();

  factory _$_HistoryDetailDataResponse.fromJson(Map<String, dynamic> json) =>
      _$$_HistoryDetailDataResponseFromJson(json);

  @override
  final SalesResponse transaction;
  final List<HistoryDetailDataProductResponse> _transactionProduct;
  @override
  List<HistoryDetailDataProductResponse> get transactionProduct {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactionProduct);
  }

  @override
  String toString() {
    return 'HistoryDetailDataResponse(transaction: $transaction, transactionProduct: $transactionProduct)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HistoryDetailDataResponse &&
            const DeepCollectionEquality()
                .equals(other.transaction, transaction) &&
            const DeepCollectionEquality()
                .equals(other._transactionProduct, _transactionProduct));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(transaction),
      const DeepCollectionEquality().hash(_transactionProduct));

  @JsonKey(ignore: true)
  @override
  _$$_HistoryDetailDataResponseCopyWith<_$_HistoryDetailDataResponse>
      get copyWith => __$$_HistoryDetailDataResponseCopyWithImpl<
          _$_HistoryDetailDataResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HistoryDetailDataResponseToJson(
      this,
    );
  }
}

abstract class _HistoryDetailDataResponse extends HistoryDetailDataResponse {
  const factory _HistoryDetailDataResponse(
      {required final SalesResponse transaction,
      required final List<HistoryDetailDataProductResponse>
          transactionProduct}) = _$_HistoryDetailDataResponse;
  const _HistoryDetailDataResponse._() : super._();

  factory _HistoryDetailDataResponse.fromJson(Map<String, dynamic> json) =
      _$_HistoryDetailDataResponse.fromJson;

  @override
  SalesResponse get transaction;
  @override
  List<HistoryDetailDataProductResponse> get transactionProduct;
  @override
  @JsonKey(ignore: true)
  _$$_HistoryDetailDataResponseCopyWith<_$_HistoryDetailDataResponse>
      get copyWith => throw _privateConstructorUsedError;
}
