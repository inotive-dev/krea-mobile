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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$_HistoryDetailDataCopyWith<$Res>
    implements $HistoryDetailDataCopyWith<$Res> {
  factory _$$_HistoryDetailDataCopyWith(_$_HistoryDetailData value,
          $Res Function(_$_HistoryDetailData) then) =
      __$$_HistoryDetailDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {SalesReport transaction,
      List<HistoryDetailDataProduct> transactionProduct});

  @override
  $SalesReportCopyWith<$Res> get transaction;
}

/// @nodoc
class __$$_HistoryDetailDataCopyWithImpl<$Res>
    extends _$HistoryDetailDataCopyWithImpl<$Res>
    implements _$$_HistoryDetailDataCopyWith<$Res> {
  __$$_HistoryDetailDataCopyWithImpl(
      _$_HistoryDetailData _value, $Res Function(_$_HistoryDetailData) _then)
      : super(_value, (v) => _then(v as _$_HistoryDetailData));

  @override
  _$_HistoryDetailData get _value => super._value as _$_HistoryDetailData;

  @override
  $Res call({
    Object? transaction = freezed,
    Object? transactionProduct = freezed,
  }) {
    return _then(_$_HistoryDetailData(
      transaction: transaction == freezed
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as SalesReport,
      transactionProduct: transactionProduct == freezed
          ? _value._transactionProduct
          : transactionProduct // ignore: cast_nullable_to_non_nullable
              as List<HistoryDetailDataProduct>,
    ));
  }
}

/// @nodoc

class _$_HistoryDetailData implements _HistoryDetailData {
  const _$_HistoryDetailData(
      {required this.transaction,
      required final List<HistoryDetailDataProduct> transactionProduct})
      : _transactionProduct = transactionProduct;

  @override
  final SalesReport transaction;
  final List<HistoryDetailDataProduct> _transactionProduct;
  @override
  List<HistoryDetailDataProduct> get transactionProduct {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactionProduct);
  }

  @override
  String toString() {
    return 'HistoryDetailData(transaction: $transaction, transactionProduct: $transactionProduct)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HistoryDetailData &&
            const DeepCollectionEquality()
                .equals(other.transaction, transaction) &&
            const DeepCollectionEquality()
                .equals(other._transactionProduct, _transactionProduct));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(transaction),
      const DeepCollectionEquality().hash(_transactionProduct));

  @JsonKey(ignore: true)
  @override
  _$$_HistoryDetailDataCopyWith<_$_HistoryDetailData> get copyWith =>
      __$$_HistoryDetailDataCopyWithImpl<_$_HistoryDetailData>(
          this, _$identity);
}

abstract class _HistoryDetailData implements HistoryDetailData {
  const factory _HistoryDetailData(
          {required final SalesReport transaction,
          required final List<HistoryDetailDataProduct> transactionProduct}) =
      _$_HistoryDetailData;

  @override
  SalesReport get transaction;
  @override
  List<HistoryDetailDataProduct> get transactionProduct;
  @override
  @JsonKey(ignore: true)
  _$$_HistoryDetailDataCopyWith<_$_HistoryDetailData> get copyWith =>
      throw _privateConstructorUsedError;
}
