// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'branch_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BranchResponse _$BranchResponseFromJson(Map<String, dynamic> json) {
  return _BranchResponse.fromJson(json);
}

/// @nodoc
class _$BranchResponseTearOff {
  const _$BranchResponseTearOff();

  _BranchResponse call(
      {@JsonKey(name: 'mart_name') required String? martName,
      required double? total}) {
    return _BranchResponse(
      martName: martName,
      total: total,
    );
  }

  BranchResponse fromJson(Map<String, Object?> json) {
    return BranchResponse.fromJson(json);
  }
}

/// @nodoc
const $BranchResponse = _$BranchResponseTearOff();

/// @nodoc
mixin _$BranchResponse {
  @JsonKey(name: 'mart_name')
  String? get martName => throw _privateConstructorUsedError;
  double? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BranchResponseCopyWith<BranchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BranchResponseCopyWith<$Res> {
  factory $BranchResponseCopyWith(
          BranchResponse value, $Res Function(BranchResponse) then) =
      _$BranchResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'mart_name') String? martName, double? total});
}

/// @nodoc
class _$BranchResponseCopyWithImpl<$Res>
    implements $BranchResponseCopyWith<$Res> {
  _$BranchResponseCopyWithImpl(this._value, this._then);

  final BranchResponse _value;
  // ignore: unused_field
  final $Res Function(BranchResponse) _then;

  @override
  $Res call({
    Object? martName = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      martName: martName == freezed
          ? _value.martName
          : martName // ignore: cast_nullable_to_non_nullable
              as String?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$BranchResponseCopyWith<$Res>
    implements $BranchResponseCopyWith<$Res> {
  factory _$BranchResponseCopyWith(
          _BranchResponse value, $Res Function(_BranchResponse) then) =
      __$BranchResponseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'mart_name') String? martName, double? total});
}

/// @nodoc
class __$BranchResponseCopyWithImpl<$Res>
    extends _$BranchResponseCopyWithImpl<$Res>
    implements _$BranchResponseCopyWith<$Res> {
  __$BranchResponseCopyWithImpl(
      _BranchResponse _value, $Res Function(_BranchResponse) _then)
      : super(_value, (v) => _then(v as _BranchResponse));

  @override
  _BranchResponse get _value => super._value as _BranchResponse;

  @override
  $Res call({
    Object? martName = freezed,
    Object? total = freezed,
  }) {
    return _then(_BranchResponse(
      martName: martName == freezed
          ? _value.martName
          : martName // ignore: cast_nullable_to_non_nullable
              as String?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BranchResponse extends _BranchResponse {
  const _$_BranchResponse(
      {@JsonKey(name: 'mart_name') required this.martName, required this.total})
      : super._();

  factory _$_BranchResponse.fromJson(Map<String, dynamic> json) =>
      _$$_BranchResponseFromJson(json);

  @override
  @JsonKey(name: 'mart_name')
  final String? martName;
  @override
  final double? total;

  @override
  String toString() {
    return 'BranchResponse(martName: $martName, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BranchResponse &&
            const DeepCollectionEquality().equals(other.martName, martName) &&
            const DeepCollectionEquality().equals(other.total, total));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(martName),
      const DeepCollectionEquality().hash(total));

  @JsonKey(ignore: true)
  @override
  _$BranchResponseCopyWith<_BranchResponse> get copyWith =>
      __$BranchResponseCopyWithImpl<_BranchResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BranchResponseToJson(this);
  }
}

abstract class _BranchResponse extends BranchResponse {
  const factory _BranchResponse(
      {@JsonKey(name: 'mart_name') required String? martName,
      required double? total}) = _$_BranchResponse;
  const _BranchResponse._() : super._();

  factory _BranchResponse.fromJson(Map<String, dynamic> json) =
      _$_BranchResponse.fromJson;

  @override
  @JsonKey(name: 'mart_name')
  String? get martName;
  @override
  double? get total;
  @override
  @JsonKey(ignore: true)
  _$BranchResponseCopyWith<_BranchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
