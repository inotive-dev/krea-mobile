import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:koperasi/data/local/entities/home/home_data_entity.dart';
import 'package:koperasi/data/local/entities/login/user_entity.dart';
import 'package:koperasi/domain/entities/home/home.dart';

import 'hive_key.dart';

@lazySingleton
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
  Future<void> saveUser(UserEntity? user) async {
    await _box.put(HiveKey.user, user);
  }

  Future<void> deleteUser() async {
    await _box.delete(HiveKey.user);
  }

  UserEntity? getUser() {
    return _box.get(HiveKey.user);
  }

  // Home Admin
  Future<void> saveHomeAdmin(HomeDataEntity? home) async {
    await _box.put(HiveKey.homeAdmin, home);
  }

  HomeDataEntity? getHomeAdmin() {
    return _box.get(HiveKey.homeAdmin);
  }
}
