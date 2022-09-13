// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductResponse _$ProductResponseFromJson(Map<String, dynamic> json) {
  return _ProductResponse.fromJson(json);
}

/// @nodoc
class _$ProductResponseTearOff {
  const _$ProductResponseTearOff();

  _ProductResponse call(
      {required int? id,
      required int? subtotal,
      required String? name,
      required String? code,
      required String? thumbnail,
      @JsonKey(name: 'created_at') required DateTime? createdAt,
      @JsonKey(name: 'updated_at') required DateTime? updatedAt}) {
    return _ProductResponse(
      id: id,
      subtotal: subtotal,
      name: name,
      code: code,
      thumbnail: thumbnail,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  ProductResponse fromJson(Map<String, Object?> json) {
    return ProductResponse.fromJson(json);
  }
}

/// @nodoc
const $ProductResponse = _$ProductResponseTearOff();

/// @nodoc
mixin _$ProductResponse {
  int? get id => throw _privateConstructorUsedError;
  int? get subtotal => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductResponseCopyWith<ProductResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductResponseCopyWith<$Res> {
  factory $ProductResponseCopyWith(
          ProductResponse value, $Res Function(ProductResponse) then) =
      _$ProductResponseCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      int? subtotal,
      String? name,
      String? code,
      String? thumbnail,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$ProductResponseCopyWithImpl<$Res>
    implements $ProductResponseCopyWith<$Res> {
  _$ProductResponseCopyWithImpl(this._value, this._then);

  final ProductResponse _value;
  // ignore: unused_field
  final $Res Function(ProductResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? subtotal = freezed,
    Object? name = freezed,
    Object? code = freezed,
    Object? thumbnail = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      subtotal: subtotal == freezed
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
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
abstract class _$ProductResponseCopyWith<$Res>
    implements $ProductResponseCopyWith<$Res> {
  factory _$ProductResponseCopyWith(
          _ProductResponse value, $Res Function(_ProductResponse) then) =
      __$ProductResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      int? subtotal,
      String? name,
      String? code,
      String? thumbnail,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$ProductResponseCopyWithImpl<$Res>
    extends _$ProductResponseCopyWithImpl<$Res>
    implements _$ProductResponseCopyWith<$Res> {
  __$ProductResponseCopyWithImpl(
      _ProductResponse _value, $Res Function(_ProductResponse) _then)
      : super(_value, (v) => _then(v as _ProductResponse));

  @override
  _ProductResponse get _value => super._value as _ProductResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? subtotal = freezed,
    Object? name = freezed,
    Object? code = freezed,
    Object? thumbnail = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_ProductResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      subtotal: subtotal == freezed
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
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
class _$_ProductResponse extends _ProductResponse {
  const _$_ProductResponse(
      {required this.id,
      required this.subtotal,
      required this.name,
      required this.code,
      required this.thumbnail,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt})
      : super._();

  factory _$_ProductResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ProductResponseFromJson(json);

  @override
  final int? id;
  @override
  final int? subtotal;
  @override
  final String? name;
  @override
  final String? code;
  @override
  final String? thumbnail;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'ProductResponse(id: $id, subtotal: $subtotal, name: $name, code: $code, thumbnail: $thumbnail, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductResponse &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.subtotal, subtotal) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.thumbnail, thumbnail) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(subtotal),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(thumbnail),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$ProductResponseCopyWith<_ProductResponse> get copyWith =>
      __$ProductResponseCopyWithImpl<_ProductResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductResponseToJson(this);
  }
}

abstract class _ProductResponse extends ProductResponse {
  const factory _ProductResponse(
          {required int? id,
          required int? subtotal,
          required String? name,
          required String? code,
          required String? thumbnail,
          @JsonKey(name: 'created_at') required DateTime? createdAt,
          @JsonKey(name: 'updated_at') required DateTime? updatedAt}) =
      _$_ProductResponse;
  const _ProductResponse._() : super._();

  factory _ProductResponse.fromJson(Map<String, dynamic> json) =
      _$_ProductResponse.fromJson;

  @override
  int? get id;
  @override
  int? get subtotal;
  @override
  String? get name;
  @override
  String? get code;
  @override
  String? get thumbnail;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$ProductResponseCopyWith<_ProductResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
