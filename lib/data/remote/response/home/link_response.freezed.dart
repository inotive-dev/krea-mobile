// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'link_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LinkResponse _$LinkResponseFromJson(Map<String, dynamic> json) {
  return _LinkResponse.fromJson(json);
}

/// @nodoc
mixin _$LinkResponse {
  String? get url => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinkResponseCopyWith<LinkResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkResponseCopyWith<$Res> {
  factory $LinkResponseCopyWith(
          LinkResponse value, $Res Function(LinkResponse) then) =
      _$LinkResponseCopyWithImpl<$Res>;
  $Res call({String? url, String? label, bool? active});
}

/// @nodoc
class _$LinkResponseCopyWithImpl<$Res> implements $LinkResponseCopyWith<$Res> {
  _$LinkResponseCopyWithImpl(this._value, this._then);

  final LinkResponse _value;
  // ignore: unused_field
  final $Res Function(LinkResponse) _then;

  @override
  $Res call({
    Object? url = freezed,
    Object? label = freezed,
    Object? active = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$$_LinkResponseCopyWith<$Res>
    implements $LinkResponseCopyWith<$Res> {
  factory _$$_LinkResponseCopyWith(
          _$_LinkResponse value, $Res Function(_$_LinkResponse) then) =
      __$$_LinkResponseCopyWithImpl<$Res>;
  @override
  $Res call({String? url, String? label, bool? active});
}

/// @nodoc
class __$$_LinkResponseCopyWithImpl<$Res>
    extends _$LinkResponseCopyWithImpl<$Res>
    implements _$$_LinkResponseCopyWith<$Res> {
  __$$_LinkResponseCopyWithImpl(
      _$_LinkResponse _value, $Res Function(_$_LinkResponse) _then)
      : super(_value, (v) => _then(v as _$_LinkResponse));

  @override
  _$_LinkResponse get _value => super._value as _$_LinkResponse;

  @override
  $Res call({
    Object? url = freezed,
    Object? label = freezed,
    Object? active = freezed,
  }) {
    return _then(_$_LinkResponse(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LinkResponse extends _LinkResponse {
  const _$_LinkResponse(
      {required this.url, required this.label, required this.active})
      : super._();

  factory _$_LinkResponse.fromJson(Map<String, dynamic> json) =>
      _$$_LinkResponseFromJson(json);

  @override
  final String? url;
  @override
  final String? label;
  @override
  final bool? active;

  @override
  String toString() {
    return 'LinkResponse(url: $url, label: $label, active: $active)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LinkResponse &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.label, label) &&
            const DeepCollectionEquality().equals(other.active, active));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(label),
      const DeepCollectionEquality().hash(active));

  @JsonKey(ignore: true)
  @override
  _$$_LinkResponseCopyWith<_$_LinkResponse> get copyWith =>
      __$$_LinkResponseCopyWithImpl<_$_LinkResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LinkResponseToJson(
      this,
    );
  }
}

abstract class _LinkResponse extends LinkResponse {
  const factory _LinkResponse(
      {required final String? url,
      required final String? label,
      required final bool? active}) = _$_LinkResponse;
  const _LinkResponse._() : super._();

  factory _LinkResponse.fromJson(Map<String, dynamic> json) =
      _$_LinkResponse.fromJson;

  @override
  String? get url;
  @override
  String? get label;
  @override
  bool? get active;
  @override
  @JsonKey(ignore: true)
  _$$_LinkResponseCopyWith<_$_LinkResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
