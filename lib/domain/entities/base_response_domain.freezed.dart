// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'base_response_domain.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BaseResponseDomainTearOff {
  const _$BaseResponseDomainTearOff();

  _BaseResponseDomain call(
      {required String? message, required int? statusCode}) {
    return _BaseResponseDomain(
      message: message,
      statusCode: statusCode,
    );
  }
}

/// @nodoc
const $BaseResponseDomain = _$BaseResponseDomainTearOff();

/// @nodoc
mixin _$BaseResponseDomain {
  String? get message => throw _privateConstructorUsedError;
  int? get statusCode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BaseResponseDomainCopyWith<BaseResponseDomain> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseDomainCopyWith<$Res> {
  factory $BaseResponseDomainCopyWith(
          BaseResponseDomain value, $Res Function(BaseResponseDomain) then) =
      _$BaseResponseDomainCopyWithImpl<$Res>;
  $Res call({String? message, int? statusCode});
}

/// @nodoc
class _$BaseResponseDomainCopyWithImpl<$Res>
    implements $BaseResponseDomainCopyWith<$Res> {
  _$BaseResponseDomainCopyWithImpl(this._value, this._then);

  final BaseResponseDomain _value;
  // ignore: unused_field
  final $Res Function(BaseResponseDomain) _then;

  @override
  $Res call({
    Object? message = freezed,
    Object? statusCode = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$BaseResponseDomainCopyWith<$Res>
    implements $BaseResponseDomainCopyWith<$Res> {
  factory _$BaseResponseDomainCopyWith(
          _BaseResponseDomain value, $Res Function(_BaseResponseDomain) then) =
      __$BaseResponseDomainCopyWithImpl<$Res>;
  @override
  $Res call({String? message, int? statusCode});
}

/// @nodoc
class __$BaseResponseDomainCopyWithImpl<$Res>
    extends _$BaseResponseDomainCopyWithImpl<$Res>
    implements _$BaseResponseDomainCopyWith<$Res> {
  __$BaseResponseDomainCopyWithImpl(
      _BaseResponseDomain _value, $Res Function(_BaseResponseDomain) _then)
      : super(_value, (v) => _then(v as _BaseResponseDomain));

  @override
  _BaseResponseDomain get _value => super._value as _BaseResponseDomain;

  @override
  $Res call({
    Object? message = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_BaseResponseDomain(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_BaseResponseDomain implements _BaseResponseDomain {
  const _$_BaseResponseDomain(
      {required this.message, required this.statusCode});

  @override
  final String? message;
  @override
  final int? statusCode;

  @override
  String toString() {
    return 'BaseResponseDomain(message: $message, statusCode: $statusCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BaseResponseDomain &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality()
                .equals(other.statusCode, statusCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(statusCode));

  @JsonKey(ignore: true)
  @override
  _$BaseResponseDomainCopyWith<_BaseResponseDomain> get copyWith =>
      __$BaseResponseDomainCopyWithImpl<_BaseResponseDomain>(this, _$identity);
}

abstract class _BaseResponseDomain implements BaseResponseDomain {
  const factory _BaseResponseDomain(
      {required String? message,
      required int? statusCode}) = _$_BaseResponseDomain;

  @override
  String? get message;
  @override
  int? get statusCode;
  @override
  @JsonKey(ignore: true)
  _$BaseResponseDomainCopyWith<_BaseResponseDomain> get copyWith =>
      throw _privateConstructorUsedError;
}
