// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'history_detail_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HistoryDetailDataTearOff {
  const _$HistoryDetailDataTearOff();

  _HistoryDetailData call(
      {required SalesReport transaction,
      required List<HistoryDetailDataProduct> transactionProduct}) {
    return _HistoryDetailData(
      transaction: transaction,
      transactionProduct: transactionProduct,
    );
  }
}

/// @nodoc
const $HistoryDetailData = _$HistoryDetailDataTearOff();

/// @nodoc
mixin _$HistoryDetailData {
  SalesReport get transaction => throw _privateConstructorUsedError;
  List<HistoryDetailDataProduct> get transactionProduct =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HistoryDetailDataCopyWith<HistoryDetailData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryDetailDataCopyWith<$Res> {
  factory $HistoryDetailDataCopyWith(
          HistoryDetailData value, $Res Function(HistoryDetailData) then) =
      _$HistoryDetailDataCopyWithImpl<$Res>;
  $Res call(
      {SalesReport transaction,
      List<HistoryDetailDataProduct> transactionProduct});

  $SalesReportCopyWith<$Res> get transaction;
}

/// @nodoc
class _$HistoryDetailDataCopyWithImpl<$Res>
    implements $HistoryDetailDataCopyWith<$Res> {
  _$HistoryDetailDataCopyWithImpl(this._value, this._then);

  final HistoryDetailData _value;
  // ignore: unused_field
  final $Res Function(HistoryDetailData) _then;

  @override
  $Res call({
    Object? transaction = freezed,
    Object? transactionProduct = freezed,
  }) {
    return _then(_value.copyWith(
      transaction: transaction == freezed
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as SalesReport,
      transactionProduct: transactionProduct == freezed
          ? _value.transactionProduct
          : transactionProduct // ignore: cast_nullable_to_non_nullable
              as List<HistoryDetailDataProduct>,
    ));
  }

  @override
  $SalesReportCopyWith<$Res> get transaction {
    return $SalesReportCopyWith<$Res>(_value.transaction, (value) {
      return _then(_value.copyWith(transaction: value));
    });
  }
}

/// @nodoc
abstract class _$HistoryDetailDataCopyWith<$Res>
    implements $HistoryDetailDataCopyWith<$Res> {
  factory _$HistoryDetailDataCopyWith(
          _HistoryDetailData value, $Res Function(_HistoryDetailData) then) =
      __$HistoryDetailDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {SalesReport transaction,
      List<HistoryDetailDataProduct> transactionProduct});

  @override
  $SalesReportCopyWith<$Res> get transaction;
}

/// @nodoc
class __$HistoryDetailDataCopyWithImpl<$Res>
    extends _$HistoryDetailDataCopyWithImpl<$Res>
    implements _$HistoryDetailDataCopyWith<$Res> {
  __$HistoryDetailDataCopyWithImpl(
      _HistoryDetailData _value, $Res Function(_HistoryDetailData) _then)
      : super(_value, (v) => _then(v as _HistoryDetailData));

  @override
  _HistoryDetailData get _value => super._value as _HistoryDetailData;

  @override
  $Res call({
    Object? transaction = freezed,
    Object? transactionProduct = freezed,
  }) {
    return _then(_HistoryDetailData(
      transaction: transaction == freezed
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as SalesReport,
      transactionProduct: transactionProduct == freezed
          ? _value.transactionProduct
          : transactionProduct // ignore: cast_nullable_to_non_nullable
              as List<HistoryDetailDataProduct>,
    ));
  }
}

/// @nodoc

class _$_HistoryDetailData implements _HistoryDetailData {
  const _$_HistoryDetailData(
      {required this.transaction, required this.transactionProduct});

  @override
  final SalesReport transaction;
  @override
  final List<HistoryDetailDataProduct> transactionProduct;

  @override
  String toString() {
    return 'HistoryDetailData(transaction: $transaction, transactionProduct: $transactionProduct)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HistoryDetailData &&
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
  _$HistoryDetailDataCopyWith<_HistoryDetailData> get copyWith =>
      __$HistoryDetailDataCopyWithImpl<_HistoryDetailData>(this, _$identity);
}

abstract class _HistoryDetailData implements HistoryDetailData {
  const factory _HistoryDetailData(
          {required SalesReport transaction,
          required List<HistoryDetailDataProduct> transactionProduct}) =
      _$_HistoryDetailData;

  @override
  SalesReport get transaction;
  @override
  List<HistoryDetailDataProduct> get transactionProduct;
  @override
  @JsonKey(ignore: true)
  _$HistoryDetailDataCopyWith<_HistoryDetailData> get copyWith =>
      throw _privateConstructorUsedError;
}
