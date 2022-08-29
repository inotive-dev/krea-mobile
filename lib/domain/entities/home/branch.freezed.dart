// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'branch.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BranchTearOff {
  const _$BranchTearOff();

  _Branch call({required String? martName, required double? total}) {
    return _Branch(
      martName: martName,
      total: total,
    );
  }
}

/// @nodoc
const $Branch = _$BranchTearOff();

/// @nodoc
mixin _$Branch {
  String? get martName => throw _privateConstructorUsedError;
  double? get total => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BranchCopyWith<Branch> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BranchCopyWith<$Res> {
  factory $BranchCopyWith(Branch value, $Res Function(Branch) then) =
      _$BranchCopyWithImpl<$Res>;
  $Res call({String? martName, double? total});
}

/// @nodoc
class _$BranchCopyWithImpl<$Res> implements $BranchCopyWith<$Res> {
  _$BranchCopyWithImpl(this._value, this._then);

  final Branch _value;
  // ignore: unused_field
  final $Res Function(Branch) _then;

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
abstract class _$BranchCopyWith<$Res> implements $BranchCopyWith<$Res> {
  factory _$BranchCopyWith(_Branch value, $Res Function(_Branch) then) =
      __$BranchCopyWithImpl<$Res>;
  @override
  $Res call({String? martName, double? total});
}

/// @nodoc
class __$BranchCopyWithImpl<$Res> extends _$BranchCopyWithImpl<$Res>
    implements _$BranchCopyWith<$Res> {
  __$BranchCopyWithImpl(_Branch _value, $Res Function(_Branch) _then)
      : super(_value, (v) => _then(v as _Branch));

  @override
  _Branch get _value => super._value as _Branch;

  @override
  $Res call({
    Object? martName = freezed,
    Object? total = freezed,
  }) {
    return _then(_Branch(
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

class _$_Branch implements _Branch {
  const _$_Branch({required this.martName, required this.total});

  @override
  final String? martName;
  @override
  final double? total;

  @override
  String toString() {
    return 'Branch(martName: $martName, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Branch &&
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
  _$BranchCopyWith<_Branch> get copyWith =>
      __$BranchCopyWithImpl<_Branch>(this, _$identity);
}

abstract class _Branch implements Branch {
  const factory _Branch({required String? martName, required double? total}) =
      _$_Branch;

  @override
  String? get martName;
  @override
  double? get total;
  @override
  @JsonKey(ignore: true)
  _$BranchCopyWith<_Branch> get copyWith => throw _privateConstructorUsedError;
}
