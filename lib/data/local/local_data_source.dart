import 'package:injectable/injectable.dart';
import 'package:koperasi/data/local/entities/home/home_data_entity.dart';
import 'package:koperasi/data/local/entities/login/user_entity.dart';
import 'package:koperasi/domain/entities/home/home.dart';

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
  Future<void> saveUser(UserEntity? user) async {
    await _hiveManager.saveUser(user);
  }

  Future<void> deleteUser() async {
    await _hiveManager.deleteUser();
  }

  UserEntity? getUser() {
    return _hiveManager.getUser();
  }

  // Home Admin
  Future<void> saveHomeAdmin(HomeDataEntity? home) async {
    await _hiveManager.saveHomeAdmin(home);
  }

  HomeDataEntity? getHomeAdmin() {
    return _hiveManager.getHomeAdmin();
  }

  // History

  // Detail History

  // Profile
}
