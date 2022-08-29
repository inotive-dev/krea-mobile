// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'branches_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BranchesResponse _$BranchesResponseFromJson(Map<String, dynamic> json) {
  return _BranchesResponse.fromJson(json);
}

/// @nodoc
class _$BranchesResponseTearOff {
  const _$BranchesResponseTearOff();

  _BranchesResponse call(
      {required String? message,
      required int? statusCode,
      required List<BranchResponse>? data}) {
    return _BranchesResponse(
      message: message,
      statusCode: statusCode,
      data: data,
    );
  }

  BranchesResponse fromJson(Map<String, Object?> json) {
    return BranchesResponse.fromJson(json);
  }
}

/// @nodoc
const $BranchesResponse = _$BranchesResponseTearOff();

/// @nodoc
mixin _$BranchesResponse {
  String? get message => throw _privateConstructorUsedError;
  int? get statusCode => throw _privateConstructorUsedError;
  List<BranchResponse>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BranchesResponseCopyWith<BranchesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BranchesResponseCopyWith<$Res> {
  factory $BranchesResponseCopyWith(
          BranchesResponse value, $Res Function(BranchesResponse) then) =
      _$BranchesResponseCopyWithImpl<$Res>;
  $Res call({String? message, int? statusCode, List<BranchResponse>? data});
}

/// @nodoc
class _$BranchesResponseCopyWithImpl<$Res>
    implements $BranchesResponseCopyWith<$Res> {
  _$BranchesResponseCopyWithImpl(this._value, this._then);

  final BranchesResponse _value;
  // ignore: unused_field
  final $Res Function(BranchesResponse) _then;

  @override
  $Res call({
    Object? message = freezed,
    Object? statusCode = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BranchResponse>?,
    ));
  }
}

/// @nodoc
abstract class _$BranchesResponseCopyWith<$Res>
    implements $BranchesResponseCopyWith<$Res> {
  factory _$BranchesResponseCopyWith(
          _BranchesResponse value, $Res Function(_BranchesResponse) then) =
      __$BranchesResponseCopyWithImpl<$Res>;
  @override
  $Res call({String? message, int? statusCode, List<BranchResponse>? data});
}

/// @nodoc
class __$BranchesResponseCopyWithImpl<$Res>
    extends _$BranchesResponseCopyWithImpl<$Res>
    implements _$BranchesResponseCopyWith<$Res> {
  __$BranchesResponseCopyWithImpl(
      _BranchesResponse _value, $Res Function(_BranchesResponse) _then)
      : super(_value, (v) => _then(v as _BranchesResponse));

  @override
  _BranchesResponse get _value => super._value as _BranchesResponse;

  @override
  $Res call({
    Object? message = freezed,
    Object? statusCode = freezed,
    Object? data = freezed,
  }) {
    return _then(_BranchesResponse(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BranchResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BranchesResponse extends _BranchesResponse {
  const _$_BranchesResponse(
      {required this.message, required this.statusCode, required this.data})
      : super._();

  factory _$_BranchesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_BranchesResponseFromJson(json);

  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final List<BranchResponse>? data;

  @override
  String toString() {
    return 'BranchesResponse(message: $message, statusCode: $statusCode, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BranchesResponse &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality()
                .equals(other.statusCode, statusCode) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(statusCode),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$BranchesResponseCopyWith<_BranchesResponse> get copyWith =>
      __$BranchesResponseCopyWithImpl<_BranchesResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BranchesResponseToJson(this);
  }
}

abstract class _BranchesResponse extends BranchesResponse {
  const factory _BranchesResponse(
      {required String? message,
      required int? statusCode,
      required List<BranchResponse>? data}) = _$_BranchesResponse;
  const _BranchesResponse._() : super._();

  factory _BranchesResponse.fromJson(Map<String, dynamic> json) =
      _$_BranchesResponse.fromJson;

  @override
  String? get message;
  @override
  int? get statusCode;
  @override
  List<BranchResponse>? get data;
  @override
  @JsonKey(ignore: true)
  _$BranchesResponseCopyWith<_BranchesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
