// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'branches_data_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BranchesDataResponse _$BranchesDataResponseFromJson(Map<String, dynamic> json) {
  return _BranchesDataResponse.fromJson(json);
}

/// @nodoc
class _$BranchesDataResponseTearOff {
  const _$BranchesDataResponseTearOff();

  _BranchesDataResponse call(
      {@JsonKey(name: 'current_page') required int? currentPage,
      required List<BranchResponse>? data,
      @JsonKey(name: 'first_page_url') required String? firstPageUrl,
      required int? from,
      @JsonKey(name: 'last_page') required int? lastPage,
      @JsonKey(name: 'last_page_url') required String? lastPageUrl,
      required List<LinkResponse> links,
      @JsonKey(name: 'next_page_url') required String? nextPageUrl,
      required String? path,
      @JsonKey(name: 'per_page') required int? perPage,
      @JsonKey(name: 'prev_page_url') required String? prevPageUrl,
      required int? to,
      required int? total}) {
    return _BranchesDataResponse(
      currentPage: currentPage,
      data: data,
      firstPageUrl: firstPageUrl,
      from: from,
      lastPage: lastPage,
      lastPageUrl: lastPageUrl,
      links: links,
      nextPageUrl: nextPageUrl,
      path: path,
      perPage: perPage,
      prevPageUrl: prevPageUrl,
      to: to,
      total: total,
    );
  }

  BranchesDataResponse fromJson(Map<String, Object?> json) {
    return BranchesDataResponse.fromJson(json);
  }
}

/// @nodoc
const $BranchesDataResponse = _$BranchesDataResponseTearOff();

/// @nodoc
mixin _$BranchesDataResponse {
  @JsonKey(name: 'current_page')
  int? get currentPage => throw _privateConstructorUsedError;
  List<BranchResponse>? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_page_url')
  String? get firstPageUrl => throw _privateConstructorUsedError;
  int? get from => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_page')
  int? get lastPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_page_url')
  String? get lastPageUrl => throw _privateConstructorUsedError;
  List<LinkResponse> get links => throw _privateConstructorUsedError;
  @JsonKey(name: 'next_page_url')
  String? get nextPageUrl => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;
  @JsonKey(name: 'per_page')
  int? get perPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'prev_page_url')
  String? get prevPageUrl => throw _privateConstructorUsedError;
  int? get to => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BranchesDataResponseCopyWith<BranchesDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BranchesDataResponseCopyWith<$Res> {
  factory $BranchesDataResponseCopyWith(BranchesDataResponse value,
          $Res Function(BranchesDataResponse) then) =
      _$BranchesDataResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'current_page') int? currentPage,
      List<BranchResponse>? data,
      @JsonKey(name: 'first_page_url') String? firstPageUrl,
      int? from,
      @JsonKey(name: 'last_page') int? lastPage,
      @JsonKey(name: 'last_page_url') String? lastPageUrl,
      List<LinkResponse> links,
      @JsonKey(name: 'next_page_url') String? nextPageUrl,
      String? path,
      @JsonKey(name: 'per_page') int? perPage,
      @JsonKey(name: 'prev_page_url') String? prevPageUrl,
      int? to,
      int? total});
}

/// @nodoc
class _$BranchesDataResponseCopyWithImpl<$Res>
    implements $BranchesDataResponseCopyWith<$Res> {
  _$BranchesDataResponseCopyWithImpl(this._value, this._then);

  final BranchesDataResponse _value;
  // ignore: unused_field
  final $Res Function(BranchesDataResponse) _then;

  @override
  $Res call({
    Object? currentPage = freezed,
    Object? data = freezed,
    Object? firstPageUrl = freezed,
    Object? from = freezed,
    Object? lastPage = freezed,
    Object? lastPageUrl = freezed,
    Object? links = freezed,
    Object? nextPageUrl = freezed,
    Object? path = freezed,
    Object? perPage = freezed,
    Object? prevPageUrl = freezed,
    Object? to = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BranchResponse>?,
      firstPageUrl: firstPageUrl == freezed
          ? _value.firstPageUrl
          : firstPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: lastPage == freezed
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPageUrl: lastPageUrl == freezed
          ? _value.lastPageUrl
          : lastPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      links: links == freezed
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as List<LinkResponse>,
      nextPageUrl: nextPageUrl == freezed
          ? _value.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      perPage: perPage == freezed
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      prevPageUrl: prevPageUrl == freezed
          ? _value.prevPageUrl
          : prevPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$BranchesDataResponseCopyWith<$Res>
    implements $BranchesDataResponseCopyWith<$Res> {
  factory _$BranchesDataResponseCopyWith(_BranchesDataResponse value,
          $Res Function(_BranchesDataResponse) then) =
      __$BranchesDataResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'current_page') int? currentPage,
      List<BranchResponse>? data,
      @JsonKey(name: 'first_page_url') String? firstPageUrl,
      int? from,
      @JsonKey(name: 'last_page') int? lastPage,
      @JsonKey(name: 'last_page_url') String? lastPageUrl,
      List<LinkResponse> links,
      @JsonKey(name: 'next_page_url') String? nextPageUrl,
      String? path,
      @JsonKey(name: 'per_page') int? perPage,
      @JsonKey(name: 'prev_page_url') String? prevPageUrl,
      int? to,
      int? total});
}

/// @nodoc
class __$BranchesDataResponseCopyWithImpl<$Res>
    extends _$BranchesDataResponseCopyWithImpl<$Res>
    implements _$BranchesDataResponseCopyWith<$Res> {
  __$BranchesDataResponseCopyWithImpl(
      _BranchesDataResponse _value, $Res Function(_BranchesDataResponse) _then)
      : super(_value, (v) => _then(v as _BranchesDataResponse));

  @override
  _BranchesDataResponse get _value => super._value as _BranchesDataResponse;

  @override
  $Res call({
    Object? currentPage = freezed,
    Object? data = freezed,
    Object? firstPageUrl = freezed,
    Object? from = freezed,
    Object? lastPage = freezed,
    Object? lastPageUrl = freezed,
    Object? links = freezed,
    Object? nextPageUrl = freezed,
    Object? path = freezed,
    Object? perPage = freezed,
    Object? prevPageUrl = freezed,
    Object? to = freezed,
    Object? total = freezed,
  }) {
    return _then(_BranchesDataResponse(
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BranchResponse>?,
      firstPageUrl: firstPageUrl == freezed
          ? _value.firstPageUrl
          : firstPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: lastPage == freezed
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPageUrl: lastPageUrl == freezed
          ? _value.lastPageUrl
          : lastPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      links: links == freezed
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as List<LinkResponse>,
      nextPageUrl: nextPageUrl == freezed
          ? _value.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      perPage: perPage == freezed
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      prevPageUrl: prevPageUrl == freezed
          ? _value.prevPageUrl
          : prevPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BranchesDataResponse extends _BranchesDataResponse {
  const _$_BranchesDataResponse(
      {@JsonKey(name: 'current_page') required this.currentPage,
      required this.data,
      @JsonKey(name: 'first_page_url') required this.firstPageUrl,
      required this.from,
      @JsonKey(name: 'last_page') required this.lastPage,
      @JsonKey(name: 'last_page_url') required this.lastPageUrl,
      required this.links,
      @JsonKey(name: 'next_page_url') required this.nextPageUrl,
      required this.path,
      @JsonKey(name: 'per_page') required this.perPage,
      @JsonKey(name: 'prev_page_url') required this.prevPageUrl,
      required this.to,
      required this.total})
      : super._();

  factory _$_BranchesDataResponse.fromJson(Map<String, dynamic> json) =>
      _$$_BranchesDataResponseFromJson(json);

  @override
  @JsonKey(name: 'current_page')
  final int? currentPage;
  @override
  final List<BranchResponse>? data;
  @override
  @JsonKey(name: 'first_page_url')
  final String? firstPageUrl;
  @override
  final int? from;
  @override
  @JsonKey(name: 'last_page')
  final int? lastPage;
  @override
  @JsonKey(name: 'last_page_url')
  final String? lastPageUrl;
  @override
  final List<LinkResponse> links;
  @override
  @JsonKey(name: 'next_page_url')
  final String? nextPageUrl;
  @override
  final String? path;
  @override
  @JsonKey(name: 'per_page')
  final int? perPage;
  @override
  @JsonKey(name: 'prev_page_url')
  final String? prevPageUrl;
  @override
  final int? to;
  @override
  final int? total;

  @override
  String toString() {
    return 'BranchesDataResponse(currentPage: $currentPage, data: $data, firstPageUrl: $firstPageUrl, from: $from, lastPage: $lastPage, lastPageUrl: $lastPageUrl, links: $links, nextPageUrl: $nextPageUrl, path: $path, perPage: $perPage, prevPageUrl: $prevPageUrl, to: $to, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BranchesDataResponse &&
            const DeepCollectionEquality()
                .equals(other.currentPage, currentPage) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality()
                .equals(other.firstPageUrl, firstPageUrl) &&
            const DeepCollectionEquality().equals(other.from, from) &&
            const DeepCollectionEquality().equals(other.lastPage, lastPage) &&
            const DeepCollectionEquality()
                .equals(other.lastPageUrl, lastPageUrl) &&
            const DeepCollectionEquality().equals(other.links, links) &&
            const DeepCollectionEquality()
                .equals(other.nextPageUrl, nextPageUrl) &&
            const DeepCollectionEquality().equals(other.path, path) &&
            const DeepCollectionEquality().equals(other.perPage, perPage) &&
            const DeepCollectionEquality()
                .equals(other.prevPageUrl, prevPageUrl) &&
            const DeepCollectionEquality().equals(other.to, to) &&
            const DeepCollectionEquality().equals(other.total, total));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentPage),
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(firstPageUrl),
      const DeepCollectionEquality().hash(from),
      const DeepCollectionEquality().hash(lastPage),
      const DeepCollectionEquality().hash(lastPageUrl),
      const DeepCollectionEquality().hash(links),
      const DeepCollectionEquality().hash(nextPageUrl),
      const DeepCollectionEquality().hash(path),
      const DeepCollectionEquality().hash(perPage),
      const DeepCollectionEquality().hash(prevPageUrl),
      const DeepCollectionEquality().hash(to),
      const DeepCollectionEquality().hash(total));

  @JsonKey(ignore: true)
  @override
  _$BranchesDataResponseCopyWith<_BranchesDataResponse> get copyWith =>
      __$BranchesDataResponseCopyWithImpl<_BranchesDataResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BranchesDataResponseToJson(this);
  }
}

abstract class _BranchesDataResponse extends BranchesDataResponse {
  const factory _BranchesDataResponse(
      {@JsonKey(name: 'current_page') required int? currentPage,
      required List<BranchResponse>? data,
      @JsonKey(name: 'first_page_url') required String? firstPageUrl,
      required int? from,
      @JsonKey(name: 'last_page') required int? lastPage,
      @JsonKey(name: 'last_page_url') required String? lastPageUrl,
      required List<LinkResponse> links,
      @JsonKey(name: 'next_page_url') required String? nextPageUrl,
      required String? path,
      @JsonKey(name: 'per_page') required int? perPage,
      @JsonKey(name: 'prev_page_url') required String? prevPageUrl,
      required int? to,
      required int? total}) = _$_BranchesDataResponse;
  const _BranchesDataResponse._() : super._();

  factory _BranchesDataResponse.fromJson(Map<String, dynamic> json) =
      _$_BranchesDataResponse.fromJson;

  @override
  @JsonKey(name: 'current_page')
  int? get currentPage;
  @override
  List<BranchResponse>? get data;
  @override
  @JsonKey(name: 'first_page_url')
  String? get firstPageUrl;
  @override
  int? get from;
  @override
  @JsonKey(name: 'last_page')
  int? get lastPage;
  @override
  @JsonKey(name: 'last_page_url')
  String? get lastPageUrl;
  @override
  List<LinkResponse> get links;
  @override
  @JsonKey(name: 'next_page_url')
  String? get nextPageUrl;
  @override
  String? get path;
  @override
  @JsonKey(name: 'per_page')
  int? get perPage;
  @override
  @JsonKey(name: 'prev_page_url')
  String? get prevPageUrl;
  @override
  int? get to;
  @override
  int? get total;
  @override
  @JsonKey(ignore: true)
  _$BranchesDataResponseCopyWith<_BranchesDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
