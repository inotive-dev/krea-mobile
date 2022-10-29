import 'package:injectable/injectable.dart';
import 'package:koperasi/data/local/entities/history/history_data_entity.dart';
import 'package:koperasi/data/local/entities/history/user_response_entity.dart';
import 'package:koperasi/data/local/entities/home/home_data_entity.dart';
import 'package:koperasi/data/local/entities/home/neraca/branches_data_entity.dart';
import 'package:koperasi/data/local/entities/home/perubahan_modal_data_entity.dart';
import 'package:koperasi/data/local/entities/home/sales_report_data_entity.dart';
import 'package:koperasi/data/local/entities/home/user/home_user_data_entity.dart';

import 'hive/hive_manager.dart';

@lazySingleton
class LocalDataSource {
  final HiveManager _hiveManager;

  LocalDataSource(this._hiveManager);

  // Token
  Future<void> saveToken(String? token) async {
    await _hiveManager.saveToken(token);
  }

  Future<void> deleteToken() async {
    await _hiveManager.deleteToken();
  }

  String? getToken() {
    return _hiveManager.getToken();
  }

  // Role
  Future<void> saveRole(String? role) async {
    await _hiveManager.saveRole(role);
  }

  Future<void> deleteRole() async {
    await _hiveManager.deleteRole();
  }

  String? getRole() {
    return _hiveManager.getRole();
  }

  // User
  Future<void> saveUser(UserResponseEntity? user) async {
    await _hiveManager.saveUser(user);
  }

  Future<void> deleteUser() async {
    await _hiveManager.deleteUser();
  }

  UserResponseEntity? getUser() {
    return _hiveManager.getUser();
  }

  // Home Admin
  Future<void> saveHomeAdmin(HomeDataEntity? home) async {
    await _hiveManager.saveHomeAdmin(home);
  }

  HomeDataEntity? getHomeAdmin() {
    return _hiveManager.getHomeAdmin();
  }

  Future<void> saveHomeAdminLabaRugi(BranchesDataEntity? labaRugi) async {
    await _hiveManager.saveHomeAdminLabaRugi(labaRugi);
  }

  BranchesDataEntity? getHomeAdminLabaRugi() {
    return _hiveManager.getHomeAdminLabaRugi();
  }

  Future<void> saveHomeAdminNeraca(BranchesDataEntity? neraca) async {
    await _hiveManager.saveHomeAdminNeraca(neraca);
  }

  BranchesDataEntity? getHomeAdminNeraca() {
    return _hiveManager.getHomeAdminNeraca();
  }

  Future<void> saveHomeAdminPerubahanModal(PerubahanModalDataEntity? perubahanModal) async {
    await _hiveManager.saveHomeAdminPerubahanModal(perubahanModal);
  }

  PerubahanModalDataEntity? getHomeAdminPerubahanModal() {
    return _hiveManager.getHomeAdminPerubahanModal();
  }

  // Home User
  Future<void> saveHomeUser(HomeUserDataEntity? home) async {
    await _hiveManager.saveHomeUser(home);
  }

  HomeUserDataEntity? getHomeUser() {
    return _hiveManager.getHomeUser();
  }

  // History User
  Future<void> saveHistoryUser(HistoryDataEntity? history) async {
    await _hiveManager.saveHistoryUser(history);
  }

  HistoryDataEntity? getHistoryUser() {
    return _hiveManager.getHistoryUser();
  }

  // History Admin
  Future<void> saveHistoryAdmin(HistoryDataEntity? history) async {
    await _hiveManager.saveHistoryAdmin(history);
  }

  HistoryDataEntity? getHistoryAdmin() {
    return _hiveManager.getHistoryAdmin();
  }

  Future<void> saveSalesReportDataAdmin(SalesReportDataEntity? salesReportData) async {
    await _hiveManager.saveSalesReportDataAdmin(salesReportData);
  }

  SalesReportDataEntity? getSalesReportDataAdmin() {
    return _hiveManager.getSalesReportDataAdmin();
  }

  Future<void> deleteHiveData() async {
    await _hiveManager.deleteHiveData();
  }
}
