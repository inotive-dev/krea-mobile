// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sales_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SalesResponse _$SalesResponseFromJson(Map<String, dynamic> json) {
  return _SalesResponse.fromJson(json);
}

/// @nodoc
class _$SalesResponseTearOff {
  const _$SalesResponseTearOff();

  _SalesResponse call(
      {required int? id,
      @JsonKey(name: 'mart_id') required int? martId,
      @JsonKey(name: 'user_id') required int? userId,
      required double? total,
      @JsonKey(name: 'total_discount') required double? totalDiscount,
      @JsonKey(name: 'total_ppn') required double? totalPpn,
      required double? hpp,
      @JsonKey(name: 'grand_total') required double? grandTotal,
      @JsonKey(name: 'payment_method') required String? paymentMethod,
      @JsonKey(name: 'bank_name') required String? bankName,
      @JsonKey(name: 'total_payment') required double? totalPayment,
      @JsonKey(name: 'total_change') required double? totalChange,
      @JsonKey(name: 'created_at') required DateTime? createdAt,
      @JsonKey(name: 'updated_at') required DateTime? updatedAt,
      @JsonKey(name: 'update_at_mobile') required DateTime? updatedAtMobile,
      @JsonKey(name: 'is_matched') required int? isMatched,
      required UserResponse? user,
      required MartResponse? mart}) {
    return _SalesResponse(
      id: id,
      martId: martId,
      userId: userId,
      total: total,
      totalDiscount: totalDiscount,
      totalPpn: totalPpn,
      hpp: hpp,
      grandTotal: grandTotal,
      paymentMethod: paymentMethod,
      bankName: bankName,
      totalPayment: totalPayment,
      totalChange: totalChange,
      createdAt: createdAt,
      updatedAt: updatedAt,
      updatedAtMobile: updatedAtMobile,
      isMatched: isMatched,
      user: user,
      mart: mart,
    );
  }

  SalesResponse fromJson(Map<String, Object?> json) {
    return SalesResponse.fromJson(json);
  }
}

/// @nodoc
const $SalesResponse = _$SalesResponseTearOff();

/// @nodoc
mixin _$SalesResponse {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'mart_id')
  int? get martId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  double? get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_discount')
  double? get totalDiscount => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_ppn')
  double? get totalPpn => throw _privateConstructorUsedError;
  double? get hpp => throw _privateConstructorUsedError;
  @JsonKey(name: 'grand_total')
  double? get grandTotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_method')
  String? get paymentMethod => throw _privateConstructorUsedError;
  @JsonKey(name: 'bank_name')
  String? get bankName => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_payment')
  double? get totalPayment => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_change')
  double? get totalChange => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'update_at_mobile')
  DateTime? get updatedAtMobile => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_matched')
  int? get isMatched => throw _privateConstructorUsedError;
  UserResponse? get user => throw _privateConstructorUsedError;
  MartResponse? get mart => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SalesResponseCopyWith<SalesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesResponseCopyWith<$Res> {
  factory $SalesResponseCopyWith(
          SalesResponse value, $Res Function(SalesResponse) then) =
      _$SalesResponseCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      @JsonKey(name: 'mart_id') int? martId,
      @JsonKey(name: 'user_id') int? userId,
      double? total,
      @JsonKey(name: 'total_discount') double? totalDiscount,
      @JsonKey(name: 'total_ppn') double? totalPpn,
      double? hpp,
      @JsonKey(name: 'grand_total') double? grandTotal,
      @JsonKey(name: 'payment_method') String? paymentMethod,
      @JsonKey(name: 'bank_name') String? bankName,
      @JsonKey(name: 'total_payment') double? totalPayment,
      @JsonKey(name: 'total_change') double? totalChange,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'update_at_mobile') DateTime? updatedAtMobile,
      @JsonKey(name: 'is_matched') int? isMatched,
      UserResponse? user,
      MartResponse? mart});

  $UserResponseCopyWith<$Res>? get user;
  $MartResponseCopyWith<$Res>? get mart;
}

/// @nodoc
class _$SalesResponseCopyWithImpl<$Res>
    implements $SalesResponseCopyWith<$Res> {
  _$SalesResponseCopyWithImpl(this._value, this._then);

  final SalesResponse _value;
  // ignore: unused_field
  final $Res Function(SalesResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? martId = freezed,
    Object? userId = freezed,
    Object? total = freezed,
    Object? totalDiscount = freezed,
    Object? totalPpn = freezed,
    Object? hpp = freezed,
    Object? grandTotal = freezed,
    Object? paymentMethod = freezed,
    Object? bankName = freezed,
    Object? totalPayment = freezed,
    Object? totalChange = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? updatedAtMobile = freezed,
    Object? isMatched = freezed,
    Object? user = freezed,
    Object? mart = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      martId: martId == freezed
          ? _value.martId
          : martId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double?,
      totalDiscount: totalDiscount == freezed
          ? _value.totalDiscount
          : totalDiscount // ignore: cast_nullable_to_non_nullable
              as double?,
      totalPpn: totalPpn == freezed
          ? _value.totalPpn
          : totalPpn // ignore: cast_nullable_to_non_nullable
              as double?,
      hpp: hpp == freezed
          ? _value.hpp
          : hpp // ignore: cast_nullable_to_non_nullable
              as double?,
      grandTotal: grandTotal == freezed
          ? _value.grandTotal
          : grandTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      paymentMethod: paymentMethod == freezed
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      bankName: bankName == freezed
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String?,
      totalPayment: totalPayment == freezed
          ? _value.totalPayment
          : totalPayment // ignore: cast_nullable_to_non_nullable
              as double?,
      totalChange: totalChange == freezed
          ? _value.totalChange
          : totalChange // ignore: cast_nullable_to_non_nullable
              as double?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAtMobile: updatedAtMobile == freezed
          ? _value.updatedAtMobile
          : updatedAtMobile // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isMatched: isMatched == freezed
          ? _value.isMatched
          : isMatched // ignore: cast_nullable_to_non_nullable
              as int?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserResponse?,
      mart: mart == freezed
          ? _value.mart
          : mart // ignore: cast_nullable_to_non_nullable
              as MartResponse?,
    ));
  }

  @override
  $UserResponseCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserResponseCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }

  @override
  $MartResponseCopyWith<$Res>? get mart {
    if (_value.mart == null) {
      return null;
    }

    return $MartResponseCopyWith<$Res>(_value.mart!, (value) {
      return _then(_value.copyWith(mart: value));
    });
  }
}

/// @nodoc
abstract class _$SalesResponseCopyWith<$Res>
    implements $SalesResponseCopyWith<$Res> {
  factory _$SalesResponseCopyWith(
          _SalesResponse value, $Res Function(_SalesResponse) then) =
      __$SalesResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      @JsonKey(name: 'mart_id') int? martId,
      @JsonKey(name: 'user_id') int? userId,
      double? total,
      @JsonKey(name: 'total_discount') double? totalDiscount,
      @JsonKey(name: 'total_ppn') double? totalPpn,
      double? hpp,
      @JsonKey(name: 'grand_total') double? grandTotal,
      @JsonKey(name: 'payment_method') String? paymentMethod,
      @JsonKey(name: 'bank_name') String? bankName,
      @JsonKey(name: 'total_payment') double? totalPayment,
      @JsonKey(name: 'total_change') double? totalChange,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'update_at_mobile') DateTime? updatedAtMobile,
      @JsonKey(name: 'is_matched') int? isMatched,
      UserResponse? user,
      MartResponse? mart});

  @override
  $UserResponseCopyWith<$Res>? get user;
  @override
  $MartResponseCopyWith<$Res>? get mart;
}

/// @nodoc
class __$SalesResponseCopyWithImpl<$Res>
    extends _$SalesResponseCopyWithImpl<$Res>
    implements _$SalesResponseCopyWith<$Res> {
  __$SalesResponseCopyWithImpl(
      _SalesResponse _value, $Res Function(_SalesResponse) _then)
      : super(_value, (v) => _then(v as _SalesResponse));

  @override
  _SalesResponse get _value => super._value as _SalesResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? martId = freezed,
    Object? userId = freezed,
    Object? total = freezed,
    Object? totalDiscount = freezed,
    Object? totalPpn = freezed,
    Object? hpp = freezed,
    Object? grandTotal = freezed,
    Object? paymentMethod = freezed,
    Object? bankName = freezed,
    Object? totalPayment = freezed,
    Object? totalChange = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? updatedAtMobile = freezed,
    Object? isMatched = freezed,
    Object? user = freezed,
    Object? mart = freezed,
  }) {
    return _then(_SalesResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      martId: martId == freezed
          ? _value.martId
          : martId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double?,
      totalDiscount: totalDiscount == freezed
          ? _value.totalDiscount
          : totalDiscount // ignore: cast_nullable_to_non_nullable
              as double?,
      totalPpn: totalPpn == freezed
          ? _value.totalPpn
          : totalPpn // ignore: cast_nullable_to_non_nullable
              as double?,
      hpp: hpp == freezed
          ? _value.hpp
          : hpp // ignore: cast_nullable_to_non_nullable
              as double?,
      grandTotal: grandTotal == freezed
          ? _value.grandTotal
          : grandTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      paymentMethod: paymentMethod == freezed
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      bankName: bankName == freezed
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String?,
      totalPayment: totalPayment == freezed
          ? _value.totalPayment
          : totalPayment // ignore: cast_nullable_to_non_nullable
              as double?,
      totalChange: totalChange == freezed
          ? _value.totalChange
          : totalChange // ignore: cast_nullable_to_non_nullable
              as double?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAtMobile: updatedAtMobile == freezed
          ? _value.updatedAtMobile
          : updatedAtMobile // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isMatched: isMatched == freezed
          ? _value.isMatched
          : isMatched // ignore: cast_nullable_to_non_nullable
              as int?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserResponse?,
      mart: mart == freezed
          ? _value.mart
          : mart // ignore: cast_nullable_to_non_nullable
              as MartResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SalesResponse extends _SalesResponse {
  const _$_SalesResponse(
      {required this.id,
      @JsonKey(name: 'mart_id') required this.martId,
      @JsonKey(name: 'user_id') required this.userId,
      required this.total,
      @JsonKey(name: 'total_discount') required this.totalDiscount,
      @JsonKey(name: 'total_ppn') required this.totalPpn,
      required this.hpp,
      @JsonKey(name: 'grand_total') required this.grandTotal,
      @JsonKey(name: 'payment_method') required this.paymentMethod,
      @JsonKey(name: 'bank_name') required this.bankName,
      @JsonKey(name: 'total_payment') required this.totalPayment,
      @JsonKey(name: 'total_change') required this.totalChange,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'update_at_mobile') required this.updatedAtMobile,
      @JsonKey(name: 'is_matched') required this.isMatched,
      required this.user,
      required this.mart})
      : super._();

  factory _$_SalesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SalesResponseFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'mart_id')
  final int? martId;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  final double? total;
  @override
  @JsonKey(name: 'total_discount')
  final double? totalDiscount;
  @override
  @JsonKey(name: 'total_ppn')
  final double? totalPpn;
  @override
  final double? hpp;
  @override
  @JsonKey(name: 'grand_total')
  final double? grandTotal;
  @override
  @JsonKey(name: 'payment_method')
  final String? paymentMethod;
  @override
  @JsonKey(name: 'bank_name')
  final String? bankName;
  @override
  @JsonKey(name: 'total_payment')
  final double? totalPayment;
  @override
  @JsonKey(name: 'total_change')
  final double? totalChange;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'update_at_mobile')
  final DateTime? updatedAtMobile;
  @override
  @JsonKey(name: 'is_matched')
  final int? isMatched;
  @override
  final UserResponse? user;
  @override
  final MartResponse? mart;

  @override
  String toString() {
    return 'SalesResponse(id: $id, martId: $martId, userId: $userId, total: $total, totalDiscount: $totalDiscount, totalPpn: $totalPpn, hpp: $hpp, grandTotal: $grandTotal, paymentMethod: $paymentMethod, bankName: $bankName, totalPayment: $totalPayment, totalChange: $totalChange, createdAt: $createdAt, updatedAt: $updatedAt, updatedAtMobile: $updatedAtMobile, isMatched: $isMatched, user: $user, mart: $mart)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SalesResponse &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.martId, martId) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.total, total) &&
            const DeepCollectionEquality()
                .equals(other.totalDiscount, totalDiscount) &&
            const DeepCollectionEquality().equals(other.totalPpn, totalPpn) &&
            const DeepCollectionEquality().equals(other.hpp, hpp) &&
            const DeepCollectionEquality()
                .equals(other.grandTotal, grandTotal) &&
            const DeepCollectionEquality()
                .equals(other.paymentMethod, paymentMethod) &&
            const DeepCollectionEquality().equals(other.bankName, bankName) &&
            const DeepCollectionEquality()
                .equals(other.totalPayment, totalPayment) &&
            const DeepCollectionEquality()
                .equals(other.totalChange, totalChange) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality()
                .equals(other.updatedAtMobile, updatedAtMobile) &&
            const DeepCollectionEquality().equals(other.isMatched, isMatched) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.mart, mart));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(martId),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(total),
      const DeepCollectionEquality().hash(totalDiscount),
      const DeepCollectionEquality().hash(totalPpn),
      const DeepCollectionEquality().hash(hpp),
      const DeepCollectionEquality().hash(grandTotal),
      const DeepCollectionEquality().hash(paymentMethod),
      const DeepCollectionEquality().hash(bankName),
      const DeepCollectionEquality().hash(totalPayment),
      const DeepCollectionEquality().hash(totalChange),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(updatedAtMobile),
      const DeepCollectionEquality().hash(isMatched),
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(mart));

  @JsonKey(ignore: true)
  @override
  _$SalesResponseCopyWith<_SalesResponse> get copyWith =>
      __$SalesResponseCopyWithImpl<_SalesResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SalesResponseToJson(this);
  }
}

abstract class _SalesResponse extends SalesResponse {
  const factory _SalesResponse(
      {required int? id,
      @JsonKey(name: 'mart_id') required int? martId,
      @JsonKey(name: 'user_id') required int? userId,
      required double? total,
      @JsonKey(name: 'total_discount') required double? totalDiscount,
      @JsonKey(name: 'total_ppn') required double? totalPpn,
      required double? hpp,
      @JsonKey(name: 'grand_total') required double? grandTotal,
      @JsonKey(name: 'payment_method') required String? paymentMethod,
      @JsonKey(name: 'bank_name') required String? bankName,
      @JsonKey(name: 'total_payment') required double? totalPayment,
      @JsonKey(name: 'total_change') required double? totalChange,
      @JsonKey(name: 'created_at') required DateTime? createdAt,
      @JsonKey(name: 'updated_at') required DateTime? updatedAt,
      @JsonKey(name: 'update_at_mobile') required DateTime? updatedAtMobile,
      @JsonKey(name: 'is_matched') required int? isMatched,
      required UserResponse? user,
      required MartResponse? mart}) = _$_SalesResponse;
  const _SalesResponse._() : super._();

  factory _SalesResponse.fromJson(Map<String, dynamic> json) =
      _$_SalesResponse.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'mart_id')
  int? get martId;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  double? get total;
  @override
  @JsonKey(name: 'total_discount')
  double? get totalDiscount;
  @override
  @JsonKey(name: 'total_ppn')
  double? get totalPpn;
  @override
  double? get hpp;
  @override
  @JsonKey(name: 'grand_total')
  double? get grandTotal;
  @override
  @JsonKey(name: 'payment_method')
  String? get paymentMethod;
  @override
  @JsonKey(name: 'bank_name')
  String? get bankName;
  @override
  @JsonKey(name: 'total_payment')
  double? get totalPayment;
  @override
  @JsonKey(name: 'total_change')
  double? get totalChange;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'update_at_mobile')
  DateTime? get updatedAtMobile;
  @override
  @JsonKey(name: 'is_matched')
  int? get isMatched;
  @override
  UserResponse? get user;
  @override
  MartResponse? get mart;
  @override
  @JsonKey(ignore: true)
  _$SalesResponseCopyWith<_SalesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
