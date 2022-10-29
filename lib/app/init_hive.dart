import 'package:hive_flutter/hive_flutter.dart';
import 'package:koperasi/data/local/entities/history/history_data_entity.dart';
import 'package:koperasi/data/local/entities/history/mart_entity.dart';
import 'package:koperasi/data/local/entities/history/mart_response_entity.dart';
import 'package:koperasi/data/local/entities/history/sales_report_entity.dart';
import 'package:koperasi/data/local/entities/history/sales_response_entity.dart';
import 'package:koperasi/data/local/entities/history/user_response_entity.dart';
import 'package:koperasi/data/local/entities/home/home_data_entity.dart';
import 'package:koperasi/data/local/entities/home/neraca/branch_entity.dart';
import 'package:koperasi/data/local/entities/home/neraca/branches_data_entity.dart';
import 'package:koperasi/data/local/entities/home/neraca/link_entity.dart';
import 'package:koperasi/data/local/entities/home/perubahan_modal_data_entity.dart';
import 'package:koperasi/data/local/entities/home/product_entity.dart';
import 'package:koperasi/data/local/entities/home/sales_report_data_entity.dart';
import 'package:koperasi/data/local/entities/home/transaction_entity.dart';
import 'package:koperasi/data/local/entities/home/user/contribution_entity.dart';
import 'package:koperasi/data/local/entities/home/user/home_user_data_entity.dart';
import 'package:koperasi/data/local/entities/login/user_entity.dart';

import '../data/local/hive/hive_key.dart';

Future<void> initHive() async {
  await Hive.initFlutter();
  Hive.registerAdapter(UserEntityAdapter());
  Hive.registerAdapter(HomeDataEntityAdapter());
  Hive.registerAdapter(TransactionEntityAdapter());
  Hive.registerAdapter(ProductEntityAdapter());
  Hive.registerAdapter(HomeUserDataEntityAdapter());
  Hive.registerAdapter(ContributionEntityAdapter());
  Hive.registerAdapter(HistoryDataEntityAdapter());
  Hive.registerAdapter(SalesReportEntityAdapter());
  Hive.registerAdapter(SalesResponseEntityAdapter());
  Hive.registerAdapter(UserResponseEntityAdapter());
  Hive.registerAdapter(MartEntityAdapter());
  Hive.registerAdapter(MartResponseEntityAdapter());
  Hive.registerAdapter(BranchEntityAdapter());
  Hive.registerAdapter(BranchesDataEntityAdapter());
  Hive.registerAdapter(LinkEntityAdapter());
  Hive.registerAdapter(PerubahanModalDataEntityAdapter());
  Hive.registerAdapter(SalesReportDataEntityAdapter());

  await Hive.openBox(HiveKey.boxKoperasi);
}
