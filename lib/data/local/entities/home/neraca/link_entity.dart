import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:koperasi/domain/entities/home/link.dart';

import '../../../hive/hive_type_id.dart';

part 'link_entity.g.dart';

@HiveType(typeId: HiveTypeId.linkEntity)
class LinkEntity extends Equatable {
  const LinkEntity({
    required this.url,
    required this.label,
    required this.active,
  });

  @HiveField(0)
  final String? url;
  @HiveField(1)
  final String? label;
  @HiveField(2)
  final bool? active;

  @override
  List<Object?> get props {
    return [
      url,
      label,
      active,
    ];
  }

  Link toDomain() => Link(
        url: url,
        label: label,
        active: active,
      );
}
