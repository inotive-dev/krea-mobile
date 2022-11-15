// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'mart.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Mart {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MartCopyWith<Mart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MartCopyWith<$Res> {
  factory $MartCopyWith(Mart value, $Res Function(Mart) then) =
      _$MartCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? name,
      String? address,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$MartCopyWithImpl<$Res> implements $MartCopyWith<$Res> {
  _$MartCopyWithImpl(this._value, this._then);

  final Mart _value;
  // ignore: unused_field
  final $Res Function(Mart) _then;

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
abstract class _$$_MartCopyWith<$Res> implements $MartCopyWith<$Res> {
  factory _$$_MartCopyWith(_$_Mart value, $Res Function(_$_Mart) then) =
      __$$_MartCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? name,
      String? address,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$$_MartCopyWithImpl<$Res> extends _$MartCopyWithImpl<$Res>
    implements _$$_MartCopyWith<$Res> {
  __$$_MartCopyWithImpl(_$_Mart _value, $Res Function(_$_Mart) _then)
      : super(_value, (v) => _then(v as _$_Mart));

  @override
  _$_Mart get _value => super._value as _$_Mart;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_Mart(
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

class _$_Mart implements _Mart {
  const _$_Mart(
      {required this.id,
      required this.name,
      required this.address,
      required this.createdAt,
      required this.updatedAt});

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? address;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Mart(id: $id, name: $name, address: $address, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Mart &&
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
  _$$_MartCopyWith<_$_Mart> get copyWith =>
      __$$_MartCopyWithImpl<_$_Mart>(this, _$identity);
}

abstract class _Mart implements Mart {
  const factory _Mart(
      {required final int? id,
      required final String? name,
      required final String? address,
      required final DateTime? createdAt,
      required final DateTime? updatedAt}) = _$_Mart;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get address;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_MartCopyWith<_$_Mart> get copyWith => throw _privateConstructorUsedError;
}
