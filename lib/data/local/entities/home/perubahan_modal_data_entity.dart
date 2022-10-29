import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:koperasi/domain/entities/home/perubahan_modal/perubahan_modal_data.dart';

import '../../hive/hive_type_id.dart';

part 'perubahan_modal_data_entity.g.dart';

@HiveType(typeId: HiveTypeId.perubahanModalEntity)
class PerubahanModalDataEntity extends Equatable {
  const PerubahanModalDataEntity({
    required this.modalAwal,
    required this.modalAkhir,
    required this.labaBersih,
    required this.labaDitahan,
    required this.total1,
    required this.total2,
    required this.prive,
    required this.koreksi,
  });

  @HiveField(0)
  final double? modalAwal;
  @HiveField(1)
  final double? modalAkhir;
  @HiveField(2)
  final double? labaBersih;
  @HiveField(3)
  final double? labaDitahan;
  @HiveField(4)
  final double? total1;
  @HiveField(5)
  final double? total2;
  @HiveField(6)
  final double? prive;
  @HiveField(7)
  final double? koreksi;

  @override
  List<Object?> get props {
    return [
      modalAwal,
      modalAkhir,
      labaBersih,
      labaDitahan,
      total1,
      total2,
      prive,
      koreksi,
    ];
  }

  PerubahanModalData toDomain() => PerubahanModalData(
        modalAwal: modalAwal,
        modalAkhir: modalAkhir,
        labaBersih: labaBersih,
        labaDitahan: labaDitahan,
        total1: total1,
        total2: total2,
        prive: prive,
        koreksi: koreksi,
      );
}
