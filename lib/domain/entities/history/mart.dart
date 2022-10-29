import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koperasi/data/local/entities/history/mart_entity.dart';

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

  // MartEntity toEntity() => MartEntity(
  //       id: id,
  //       name: name,
  //       address: address,
  //       createdAt: createdAt,
  //       updatedAt: updatedAt,
  //     );
}
