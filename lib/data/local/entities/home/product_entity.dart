import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:koperasi/domain/entities/home/product.dart';

import '../../hive/hive_type_id.dart';

part 'product_entity.g.dart';

@HiveType(typeId: HiveTypeId.productEntity)
class ProductEntity extends Equatable {
  const ProductEntity({
    required this.id,
    required this.subtotal,
    required this.name,
    required this.code,
    required this.thumbnail,
    required this.createdAt,
    required this.updatedAt,
  });

  @HiveField(0)
  final int? id;
  @HiveField(1)
  final int? subtotal;
  @HiveField(2)
  final String? name;
  @HiveField(3)
  final String? code;
  @HiveField(4)
  final String? thumbnail;
  @HiveField(5)
  final DateTime? createdAt;
  @HiveField(6)
  final DateTime? updatedAt;

  @override
  List<Object?> get props {
    return [
      id,
      subtotal,
      name,
      code,
      thumbnail,
      createdAt,
      updatedAt,
    ];
  }

  Product toDomain() => Product(
        id: id,
        subtotal: subtotal,
        name: name,
        code: code,
        thumbnail: thumbnail,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}
