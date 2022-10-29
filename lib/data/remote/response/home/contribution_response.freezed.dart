// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'contribution_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContributionResponse _$ContributionResponseFromJson(Map<String, dynamic> json) {
  return _ContributionResponse.fromJson(json);
}

/// @nodoc
class _$ContributionResponseTearOff {
  const _$ContributionResponseTearOff();

  _ContributionResponse call(
      {@JsonKey(name: 'contribution_wajib')
          required int contributionWajib,
      @JsonKey(name: 'contribution_pokok')
          required int contributionPokok,
      @JsonKey(name: 'contribution_sukarela')
          required int contributionSukarela}) {
    return _ContributionResponse(
      contributionWajib: contributionWajib,
      contributionPokok: contributionPokok,
      contributionSukarela: contributionSukarela,
    );
  }

  ContributionResponse fromJson(Map<String, Object?> json) {
    return ContributionResponse.fromJson(json);
  }
}

/// @nodoc
const $ContributionResponse = _$ContributionResponseTearOff();

/// @nodoc
mixin _$ContributionResponse {
  @JsonKey(name: 'contribution_wajib')
  int get contributionWajib => throw _privateConstructorUsedError;
  @JsonKey(name: 'contribution_pokok')
  int get contributionPokok => throw _privateConstructorUsedError;
  @JsonKey(name: 'contribution_sukarela')
  int get contributionSukarela => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContributionResponseCopyWith<ContributionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContributionResponseCopyWith<$Res> {
  factory $ContributionResponseCopyWith(ContributionResponse value,
          $Res Function(ContributionResponse) then) =
      _$ContributionResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'contribution_wajib') int contributionWajib,
      @JsonKey(name: 'contribution_pokok') int contributionPokok,
      @JsonKey(name: 'contribution_sukarela') int contributionSukarela});
}

/// @nodoc
class _$ContributionResponseCopyWithImpl<$Res>
    implements $ContributionResponseCopyWith<$Res> {
  _$ContributionResponseCopyWithImpl(this._value, this._then);

  final ContributionResponse _value;
  // ignore: unused_field
  final $Res Function(ContributionResponse) _then;

  @override
  $Res call({
    Object? contributionWajib = freezed,
    Object? contributionPokok = freezed,
    Object? contributionSukarela = freezed,
  }) {
    return _then(_value.copyWith(
      contributionWajib: contributionWajib == freezed
          ? _value.contributionWajib
          : contributionWajib // ignore: cast_nullable_to_non_nullable
              as int,
      contributionPokok: contributionPokok == freezed
          ? _value.contributionPokok
          : contributionPokok // ignore: cast_nullable_to_non_nullable
              as int,
      contributionSukarela: contributionSukarela == freezed
          ? _value.contributionSukarela
          : contributionSukarela // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ContributionResponseCopyWith<$Res>
    implements $ContributionResponseCopyWith<$Res> {
  factory _$ContributionResponseCopyWith(_ContributionResponse value,
          $Res Function(_ContributionResponse) then) =
      __$ContributionResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'contribution_wajib') int contributionWajib,
      @JsonKey(name: 'contribution_pokok') int contributionPokok,
      @JsonKey(name: 'contribution_sukarela') int contributionSukarela});
}

/// @nodoc
class __$ContributionResponseCopyWithImpl<$Res>
    extends _$ContributionResponseCopyWithImpl<$Res>
    implements _$ContributionResponseCopyWith<$Res> {
  __$ContributionResponseCopyWithImpl(
      _ContributionResponse _value, $Res Function(_ContributionResponse) _then)
      : super(_value, (v) => _then(v as _ContributionResponse));

  @override
  _ContributionResponse get _value => super._value as _ContributionResponse;

  @override
  $Res call({
    Object? contributionWajib = freezed,
    Object? contributionPokok = freezed,
    Object? contributionSukarela = freezed,
  }) {
    return _then(_ContributionResponse(
      contributionWajib: contributionWajib == freezed
          ? _value.contributionWajib
          : contributionWajib // ignore: cast_nullable_to_non_nullable
              as int,
      contributionPokok: contributionPokok == freezed
          ? _value.contributionPokok
          : contributionPokok // ignore: cast_nullable_to_non_nullable
              as int,
      contributionSukarela: contributionSukarela == freezed
          ? _value.contributionSukarela
          : contributionSukarela // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ContributionResponse extends _ContributionResponse {
  const _$_ContributionResponse(
      {@JsonKey(name: 'contribution_wajib')
          required this.contributionWajib,
      @JsonKey(name: 'contribution_pokok')
          required this.contributionPokok,
      @JsonKey(name: 'contribution_sukarela')
          required this.contributionSukarela})
      : super._();

  factory _$_ContributionResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ContributionResponseFromJson(json);

  @override
  @JsonKey(name: 'contribution_wajib')
  final int contributionWajib;
  @override
  @JsonKey(name: 'contribution_pokok')
  final int contributionPokok;
  @override
  @JsonKey(name: 'contribution_sukarela')
  final int contributionSukarela;

  @override
  String toString() {
    return 'ContributionResponse(contributionWajib: $contributionWajib, contributionPokok: $contributionPokok, contributionSukarela: $contributionSukarela)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ContributionResponse &&
            const DeepCollectionEquality()
                .equals(other.contributionWajib, contributionWajib) &&
            const DeepCollectionEquality()
                .equals(other.contributionPokok, contributionPokok) &&
            const DeepCollectionEquality()
                .equals(other.contributionSukarela, contributionSukarela));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(contributionWajib),
      const DeepCollectionEquality().hash(contributionPokok),
      const DeepCollectionEquality().hash(contributionSukarela));

  @JsonKey(ignore: true)
  @override
  _$ContributionResponseCopyWith<_ContributionResponse> get copyWith =>
      __$ContributionResponseCopyWithImpl<_ContributionResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContributionResponseToJson(this);
  }
}

abstract class _ContributionResponse extends ContributionResponse {
  const factory _ContributionResponse(
      {@JsonKey(name: 'contribution_wajib')
          required int contributionWajib,
      @JsonKey(name: 'contribution_pokok')
          required int contributionPokok,
      @JsonKey(name: 'contribution_sukarela')
          required int contributionSukarela}) = _$_ContributionResponse;
  const _ContributionResponse._() : super._();

  factory _ContributionResponse.fromJson(Map<String, dynamic> json) =
      _$_ContributionResponse.fromJson;

  @override
  @JsonKey(name: 'contribution_wajib')
  int get contributionWajib;
  @override
  @JsonKey(name: 'contribution_pokok')
  int get contributionPokok;
  @override
  @JsonKey(name: 'contribution_sukarela')
  int get contributionSukarela;
  @override
  @JsonKey(ignore: true)
  _$ContributionResponseCopyWith<_ContributionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
