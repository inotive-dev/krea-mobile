// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sales_report_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SalesReportResponse _$SalesReportResponseFromJson(Map<String, dynamic> json) {
  return _SalesReportResponse.fromJson(json);
}

/// @nodoc
class _$SalesReportResponseTearOff {
  const _$SalesReportResponseTearOff();

  _SalesReportResponse call(
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
      required UserResponse? user}) {
    return _SalesReportResponse(
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
    );
  }

  SalesReportResponse fromJson(Map<String, Object?> json) {
    return SalesReportResponse.fromJson(json);
  }
}

/// @nodoc
const $SalesReportResponse = _$SalesReportResponseTearOff();

/// @nodoc
mixin _$SalesReportResponse {
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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SalesReportResponseCopyWith<SalesReportResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesReportResponseCopyWith<$Res> {
  factory $SalesReportResponseCopyWith(
          SalesReportResponse value, $Res Function(SalesReportResponse) then) =
      _$SalesReportResponseCopyWithImpl<$Res>;
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
      UserResponse? user});

  $UserResponseCopyWith<$Res>? get user;
}

/// @nodoc
class _$SalesReportResponseCopyWithImpl<$Res>
    implements $SalesReportResponseCopyWith<$Res> {
  _$SalesReportResponseCopyWithImpl(this._value, this._then);

  final SalesReportResponse _value;
  // ignore: unused_field
  final $Res Function(SalesReportResponse) _then;

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
}

/// @nodoc
abstract class _$SalesReportResponseCopyWith<$Res>
    implements $SalesReportResponseCopyWith<$Res> {
  factory _$SalesReportResponseCopyWith(_SalesReportResponse value,
          $Res Function(_SalesReportResponse) then) =
      __$SalesReportResponseCopyWithImpl<$Res>;
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
      UserResponse? user});

  @override
  $UserResponseCopyWith<$Res>? get user;
}

/// @nodoc
class __$SalesReportResponseCopyWithImpl<$Res>
    extends _$SalesReportResponseCopyWithImpl<$Res>
    implements _$SalesReportResponseCopyWith<$Res> {
  __$SalesReportResponseCopyWithImpl(
      _SalesReportResponse _value, $Res Function(_SalesReportResponse) _then)
      : super(_value, (v) => _then(v as _SalesReportResponse));

  @override
  _SalesReportResponse get _value => super._value as _SalesReportResponse;

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
  }) {
    return _then(_SalesReportResponse(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SalesReportResponse extends _SalesReportResponse {
  const _$_SalesReportResponse(
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
      required this.user})
      : super._();

  factory _$_SalesReportResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SalesReportResponseFromJson(json);

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
  String toString() {
    return 'SalesReportResponse(id: $id, martId: $martId, userId: $userId, total: $total, totalDiscount: $totalDiscount, totalPpn: $totalPpn, hpp: $hpp, grandTotal: $grandTotal, paymentMethod: $paymentMethod, bankName: $bankName, totalPayment: $totalPayment, totalChange: $totalChange, createdAt: $createdAt, updatedAt: $updatedAt, updatedAtMobile: $updatedAtMobile, isMatched: $isMatched, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SalesReportResponse &&
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
            const DeepCollectionEquality().equals(other.user, user));
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
      const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$SalesReportResponseCopyWith<_SalesReportResponse> get copyWith =>
      __$SalesReportResponseCopyWithImpl<_SalesReportResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SalesReportResponseToJson(this);
  }
}

abstract class _SalesReportResponse extends SalesReportResponse {
  const factory _SalesReportResponse(
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
      required UserResponse? user}) = _$_SalesReportResponse;
  const _SalesReportResponse._() : super._();

  factory _SalesReportResponse.fromJson(Map<String, dynamic> json) =
      _$_SalesReportResponse.fromJson;

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
  @JsonKey(ignore: true)
  _$SalesReportResponseCopyWith<_SalesReportResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
