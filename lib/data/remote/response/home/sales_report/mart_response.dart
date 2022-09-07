import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koperasi/domain/entities/history_entities/mart.dart';

part 'mart_response.freezed.dart';
part 'mart_response.g.dart';

@freezed
class MartResponse with _$MartResponse {
  const MartResponse._();

  const factory MartResponse({
    required int? id,
    required String? name,
    required String? address,
    @JsonKey(name: 'created_at') required DateTime? createdAt,
    @JsonKey(name: 'updated_at') required DateTime? updatedAt,
  }) = _MartResponse;

  factory MartResponse.fromJson(Map<String, dynamic> json) => _$MartResponseFromJson(json);

  Mart toDomain() => Mart(
        id: id,
        name: name,
        address: address,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}
