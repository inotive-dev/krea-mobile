// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'mart_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MartResponse _$MartResponseFromJson(Map<String, dynamic> json) {
  return _MartResponse.fromJson(json);
}

/// @nodoc
class _$MartResponseTearOff {
  const _$MartResponseTearOff();

  _MartResponse call(
      {required int? id,
      required String? name,
      required String? address,
      @JsonKey(name: 'created_at') required DateTime? createdAt,
      @JsonKey(name: 'updated_at') required DateTime? updatedAt}) {
    return _MartResponse(
      id: id,
      name: name,
      address: address,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  MartResponse fromJson(Map<String, Object?> json) {
    return MartResponse.fromJson(json);
  }
}

/// @nodoc
const $MartResponse = _$MartResponseTearOff();

/// @nodoc
mixin _$MartResponse {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MartResponseCopyWith<MartResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MartResponseCopyWith<$Res> {
  factory $MartResponseCopyWith(
          MartResponse value, $Res Function(MartResponse) then) =
      _$MartResponseCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? name,
      String? address,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$MartResponseCopyWithImpl<$Res> implements $MartResponseCopyWith<$Res> {
  _$MartResponseCopyWithImpl(this._value, this._then);

  final MartResponse _value;
  // ignore: unused_field
  final $Res Function(MartResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$MartResponseCopyWith<$Res>
    implements $MartResponseCopyWith<$Res> {
  factory _$MartResponseCopyWith(
          _MartResponse value, $Res Function(_MartResponse) then) =
      __$MartResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? name,
      String? address,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$MartResponseCopyWithImpl<$Res> extends _$MartResponseCopyWithImpl<$Res>
    implements _$MartResponseCopyWith<$Res> {
  __$MartResponseCopyWithImpl(
      _MartResponse _value, $Res Function(_MartResponse) _then)
      : super(_value, (v) => _then(v as _MartResponse));

  @override
  _MartResponse get _value => super._value as _MartResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_MartResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MartResponse extends _MartResponse {
  const _$_MartResponse(
      {required this.id,
      required this.name,
      required this.address,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt})
      : super._();

  factory _$_MartResponse.fromJson(Map<String, dynamic> json) =>
      _$$_MartResponseFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? address;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'MartResponse(id: $id, name: $name, address: $address, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MartResponse &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$MartResponseCopyWith<_MartResponse> get copyWith =>
      __$MartResponseCopyWithImpl<_MartResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MartResponseToJson(this);
  }
}

abstract class _MartResponse extends MartResponse {
  const factory _MartResponse(
          {required int? id,
          required String? name,
          required String? address,
          @JsonKey(name: 'created_at') required DateTime? createdAt,
          @JsonKey(name: 'updated_at') required DateTime? updatedAt}) =
      _$_MartResponse;
  const _MartResponse._() : super._();

  factory _MartResponse.fromJson(Map<String, dynamic> json) =
      _$_MartResponse.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get address;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$MartResponseCopyWith<_MartResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
