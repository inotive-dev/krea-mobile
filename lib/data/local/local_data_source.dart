import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:koperasi/data/local/entities/history/history_data_entity.dart';
import 'package:koperasi/data/local/entities/history/user_response_entity.dart';
import 'package:koperasi/data/local/entities/home/home_data_entity.dart';
import 'package:koperasi/data/local/entities/home/neraca/branch_entity.dart';
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

  // QR LABA RUGI
  BranchesDataEntity? getQRLabaRugi(String type) {
    String selectType = 'penjualanBersih';
    switch (type) {
      case 'total penjualan bersih':
        selectType = 'penjualanBersih';
        break;
      case 'total biaya operasional':
        selectType = 'biayaOperasi';
        break;
      case 'total biaya administrasi':
        selectType = 'biayaAdmin';
        break;
      case 'total biaya biaya':
        selectType = 'biayaBiaya';
        break;
      case 'laba':
        selectType = 'laba';
        break;
      default:
    }

    final dataString = _hiveManager.getQRLabaRugi();
    final dataJson = jsonDecode(dataString.toString());

    List asetLancar = dataJson[selectType];
    List<BranchEntity> listData =
        asetLancar.map((e) => BranchEntity(martName: e['mart'], total: e['total'].toDouble())).toList();

    return BranchesDataEntity(
      currentPage: 1,
      data: listData,
      firstPageUrl: null,
      from: 1,
      lastPage: null,
      lastPageUrl: null,
      links: null,
      nextPageUrl: null,
      path: null,
      perPage: null,
      prevPageUrl: null,
      to: 1,
      total: listData.length,
    );
  }

  Future<void> saveQRLabaRugi(String? labaRugi) async {
    await _hiveManager.saveQRLabaRugi(labaRugi);
  }
  // END QR LABA RUGI

  Future<void> saveHomeAdminNeraca(BranchesDataEntity? neraca) async {
    await _hiveManager.saveHomeAdminNeraca(neraca);
  }

  BranchesDataEntity? getHomeAdminNeraca() {
    return _hiveManager.getHomeAdminNeraca();
  }

  // QR NERACA
  Future<void> saveQRAdminNeraca(String neraca) async {
    await _hiveManager.saveQRAdminNeraca(neraca);
  }

  BranchesDataEntity? getQRAdminNeraca(String type) {
    String selectType = 'asetLancar';
    switch (type) {
      case 'total aset lancar':
        selectType = 'asetLancar';
        break;
      case 'total aset tetap':
        selectType = 'asetTetap';
        break;
      case 'total hutang lancar':
        selectType = 'hutangLancar';
        break;
      case 'total hutang jangka pendek':
        selectType = 'hutangJapen';
        break;
      case 'total hutang bersih':
        selectType = 'hutangBersih';
        break;
      case 'aktiva':
        selectType = 'aktiva';
        break;
      case 'pasiva':
        selectType = 'pasiva';
        break;
      default:
    }

    final dataString = _hiveManager.getQRAdminNeraca();
    final dataJson = jsonDecode(dataString.toString());

    List asetLancar = dataJson[selectType];
    List<BranchEntity> listData =
        asetLancar.map((e) => BranchEntity(martName: e['mart'], total: e['total'].toDouble())).toList();

    return BranchesDataEntity(
      currentPage: 1,
      data: listData,
      firstPageUrl: null,
      from: 1,
      lastPage: null,
      lastPageUrl: null,
      links: null,
      nextPageUrl: null,
      path: null,
      perPage: null,
      prevPageUrl: null,
      to: 1,
      total: listData.length,
    );
  }
  // END QR NERACA

  Future<void> saveHomeAdminPerubahanModal(PerubahanModalDataEntity? perubahanModal) async {
    await _hiveManager.saveHomeAdminPerubahanModal(perubahanModal);
  }

  PerubahanModalDataEntity? getHomeAdminPerubahanModal() {
    return _hiveManager.getHomeAdminPerubahanModal();
  }

  // QR PERUBAHAN MODAL
  Future<void> saveQRPerubahanModal(String? perubahanModal) async {
    await _hiveManager.saveQRPerubahanModal(perubahanModal);
  }

  PerubahanModalDataEntity? getQRPerubahanModal() {
    final dataString = _hiveManager.getQRPerubahanModal();
    final dataJson = jsonDecode(dataString.toString());

    return PerubahanModalDataEntity(
      modalAwal: dataJson['modal_awal'].toDouble(),
      modalAkhir: dataJson['modal_akhir'].toDouble(),
      labaBersih: dataJson['laba_bersih'].toDouble(),
      labaDitahan: dataJson['laba_ditahan'].toDouble(),
      total1: dataJson['total1'].toDouble(),
      total2: dataJson['total2'].toDouble(),
      prive: dataJson['prive'].toDouble(),
      koreksi: dataJson['koreksi'].toDouble(),
    );
  }
  // END QR PERUBAHAN MODAL

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
