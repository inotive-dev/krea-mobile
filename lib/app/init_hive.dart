import 'package:hive_flutter/hive_flutter.dart';
import 'package:koperasi/data/local/entities/home/home_data_entity.dart';
import 'package:koperasi/data/local/entities/home/product_entity.dart';
import 'package:koperasi/data/local/entities/home/transaction_entity.dart';
import 'package:koperasi/data/local/entities/login/user_entity.dart';

import '../data/local/hive/hive_key.dart';

Future<void> initHive() async {
  await Hive.initFlutter();
  Hive.registerAdapter(UserEntityAdapter());
  Hive.registerAdapter(HomeDataEntityAdapter());
  Hive.registerAdapter(TransactionEntityAdapter());
  Hive.registerAdapter(ProductEntityAdapter());

  await Hive.openBox(HiveKey.boxKoperasi);
}
