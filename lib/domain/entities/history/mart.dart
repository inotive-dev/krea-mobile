import 'package:freezed_annotation/freezed_annotation.dart';

part 'mart.freezed.dart';

@freezed
class Mart with _$Mart {
  const factory Mart({
    required int? id,
    required String? name,
    required String? address,
    required DateTime? createdAt,
    required DateTime? updatedAt,
  }) = _Mart;
}
