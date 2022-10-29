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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HistoryDetailDataResponse _$HistoryDetailDataResponseFromJson(
    Map<String, dynamic> json) {
  return _HistoryDetailDataResponse.fromJson(json);
}

/// @nodoc
class _$HistoryDetailDataResponseTearOff {
  const _$HistoryDetailDataResponseTearOff();

  _HistoryDetailDataResponse call(
      {required SalesResponse transaction,
      required List<HistoryDetailDataProductResponse> transactionProduct}) {
    return _HistoryDetailDataResponse(
      transaction: transaction,
      transactionProduct: transactionProduct,
    );
  }

  HistoryDetailDataResponse fromJson(Map<String, Object?> json) {
    return HistoryDetailDataResponse.fromJson(json);
  }
}

/// @nodoc
const $HistoryDetailDataResponse = _$HistoryDetailDataResponseTearOff();

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
abstract class _$HistoryDetailDataResponseCopyWith<$Res>
    implements $HistoryDetailDataResponseCopyWith<$Res> {
  factory _$HistoryDetailDataResponseCopyWith(_HistoryDetailDataResponse value,
          $Res Function(_HistoryDetailDataResponse) then) =
      __$HistoryDetailDataResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {SalesResponse transaction,
      List<HistoryDetailDataProductResponse> transactionProduct});

  @override
  $SalesResponseCopyWith<$Res> get transaction;
}

/// @nodoc
class __$HistoryDetailDataResponseCopyWithImpl<$Res>
    extends _$HistoryDetailDataResponseCopyWithImpl<$Res>
    implements _$HistoryDetailDataResponseCopyWith<$Res> {
  __$HistoryDetailDataResponseCopyWithImpl(_HistoryDetailDataResponse _value,
      $Res Function(_HistoryDetailDataResponse) _then)
      : super(_value, (v) => _then(v as _HistoryDetailDataResponse));

  @override
  _HistoryDetailDataResponse get _value =>
      super._value as _HistoryDetailDataResponse;

  @override
  $Res call({
    Object? transaction = freezed,
    Object? transactionProduct = freezed,
  }) {
    return _then(_HistoryDetailDataResponse(
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
}

/// @nodoc
@JsonSerializable()
class _$_HistoryDetailDataResponse extends _HistoryDetailDataResponse {
  const _$_HistoryDetailDataResponse(
      {required this.transaction, required this.transactionProduct})
      : super._();

  factory _$_HistoryDetailDataResponse.fromJson(Map<String, dynamic> json) =>
      _$$_HistoryDetailDataResponseFromJson(json);

  @override
  final SalesResponse transaction;
  @override
  final List<HistoryDetailDataProductResponse> transactionProduct;

  @override
  String toString() {
    return 'HistoryDetailDataResponse(transaction: $transaction, transactionProduct: $transactionProduct)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HistoryDetailDataResponse &&
            const DeepCollectionEquality()
                .equals(other.transaction, transaction) &&
            const DeepCollectionEquality()
                .equals(other.transactionProduct, transactionProduct));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(transaction),
      const DeepCollectionEquality().hash(transactionProduct));

  @JsonKey(ignore: true)
  @override
  _$HistoryDetailDataResponseCopyWith<_HistoryDetailDataResponse>
      get copyWith =>
          __$HistoryDetailDataResponseCopyWithImpl<_HistoryDetailDataResponse>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HistoryDetailDataResponseToJson(this);
  }
}

abstract class _HistoryDetailDataResponse extends HistoryDetailDataResponse {
  const factory _HistoryDetailDataResponse(
          {required SalesResponse transaction,
          required List<HistoryDetailDataProductResponse> transactionProduct}) =
      _$_HistoryDetailDataResponse;
  const _HistoryDetailDataResponse._() : super._();

  factory _HistoryDetailDataResponse.fromJson(Map<String, dynamic> json) =
      _$_HistoryDetailDataResponse.fromJson;

  @override
  SalesResponse get transaction;
  @override
  List<HistoryDetailDataProductResponse> get transactionProduct;
  @override
  @JsonKey(ignore: true)
  _$HistoryDetailDataResponseCopyWith<_HistoryDetailDataResponse>
      get copyWith => throw _privateConstructorUsedError;
}
