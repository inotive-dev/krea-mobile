import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koperasi/domain/entities/home/home_data.dart';

part 'home.freezed.dart';

@freezed
class Home with _$Home {
  const factory Home({
    required String? message,
    required int? statusCode,
    required HomeData? data,
  }) = _Home;
}
