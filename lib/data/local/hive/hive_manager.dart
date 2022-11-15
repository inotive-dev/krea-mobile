import 'package:hive_flutter/hive_flutter.dart';
import 'package:koperasi/data/local/entities/history/history_data_entity.dart';
import 'package:koperasi/data/local/entities/history/user_response_entity.dart';
import 'package:koperasi/data/local/entities/home/home_data_entity.dart';
import 'package:koperasi/data/local/entities/home/neraca/branches_data_entity.dart';
import 'package:koperasi/data/local/entities/home/perubahan_modal_data_entity.dart';
import 'package:koperasi/data/local/entities/home/sales_report_data_entity.dart';
import 'package:koperasi/data/local/entities/home/user/home_user_data_entity.dart';

import 'hive_key.dart';

class HiveManager {
  final Box<dynamic> _box;

  HiveManager(this._box);

  // Token
  Future<void> saveToken(String? token) async {
    await _box.put(HiveKey.token, token);
  }

  Future<void> deleteToken() async {
    await _box.delete(HiveKey.token);
  }

  String? getToken() {
    return _box.get(HiveKey.token);
  }

  // Role
  Future<void> saveRole(String? role) async {
    await _box.put(HiveKey.role, role);
  }

  Future<void> deleteRole() async {
    await _box.delete(HiveKey.role);
  }

  String? getRole() {
    return _box.get(HiveKey.role);
  }

  // User
  Future<void> saveUser(UserResponseEntity? user) async {
    await _box.put(HiveKey.user, user);
  }

  Future<void> deleteUser() async {
    await _box.delete(HiveKey.user);
  }

  UserResponseEntity? getUser() {
    return _box.get(HiveKey.user);
  }

  // Home Admin
  Future<void> saveHomeAdmin(HomeDataEntity? home) async {
    await _box.put(HiveKey.homeAdmin, home);
  }

  HomeDataEntity? getHomeAdmin() {
    return _box.get(HiveKey.homeAdmin);
  }

  Future<void> saveHomeAdminLabaRugi(BranchesDataEntity? labaRugi) async {
    await _box.put(HiveKey.homeAdminLabaRugi, labaRugi);
  }

  BranchesDataEntity? getHomeAdminLabaRugi() {
    return _box.get(HiveKey.homeAdminLabaRugi);
  }

  // QR LABA RUGI
  Future<void> saveQRLabaRugi(String? labaRugi) async {
    await _box.put(HiveKey.homeAdminLabaRugi, labaRugi);
  }

  String? getQRLabaRugi() {
    return _box.get(HiveKey.homeAdminLabaRugi);
  }
  // END QR LABA RUGI

  Future<void> saveHomeAdminNeraca(BranchesDataEntity? neraca) async {
    await _box.put(HiveKey.homeAdminNeraca, neraca);
  }

  BranchesDataEntity? getHomeAdminNeraca() {
    return _box.get(HiveKey.homeAdminNeraca);
  }

  // QR NERACA
  Future<void> saveQRAdminNeraca(String neraca) async {
    await _box.put(HiveKey.homeAdminNeraca, neraca);
  }

  String? getQRAdminNeraca() {
    return _box.get(HiveKey.homeAdminNeraca);
  }
  // END QR NERACA

  Future<void> saveHomeAdminPerubahanModal(PerubahanModalDataEntity? perubahanModal) async {
    await _box.put(HiveKey.homeAdminPerubahanModal, perubahanModal);
  }

  PerubahanModalDataEntity? getHomeAdminPerubahanModal() {
    return _box.get(HiveKey.homeAdminPerubahanModal);
  }

  // QR PERUBAHAN MODAL
  Future<void> saveQRPerubahanModal(String? perubahanModal) async {
    await _box.put(HiveKey.homeAdminPerubahanModal, perubahanModal);
  }

  String? getQRPerubahanModal() {
    return _box.get(HiveKey.homeAdminPerubahanModal);
  }
  // END QR PERUBAHAN MODAL

  // Home User
  Future<void> saveHomeUser(HomeUserDataEntity? home) async {
    await _box.put(HiveKey.homeUser, home);
  }

  HomeUserDataEntity? getHomeUser() {
    return _box.get(HiveKey.homeUser);
  }

  // History User
  Future<void> saveHistoryUser(HistoryDataEntity? history) async {
    await _box.put(HiveKey.historyUser, history);
  }

  HistoryDataEntity? getHistoryUser() {
    return _box.get(HiveKey.historyUser);
  }

  // History Admin
  Future<void> saveHistoryAdmin(HistoryDataEntity? history) async {
    await _box.put(HiveKey.historyAdmin, history);
  }

  HistoryDataEntity? getHistoryAdmin() {
    return _box.get(HiveKey.historyAdmin);
  }

  Future<void> saveSalesReportDataAdmin(SalesReportDataEntity? history) async {
    await _box.put(HiveKey.salesReportDataAdmin, history);
  }

  SalesReportDataEntity? getSalesReportDataAdmin() {
    return _box.get(HiveKey.salesReportDataAdmin);
  }

  Future<void> deleteHiveData() async {
    await _box.clear();
  }
}
