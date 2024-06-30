import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:teste_mobile_simples/user/models/user.dart';

abstract class UserStorage {
  static const _storage = FlutterSecureStorage();

  UserStorage();

  static Future<void> setUser(User user) async {
    await _storage.write(key: 'currentUser', value: json.encode(user.toJson()));
  }

  static Future<void> deleteUser() async =>
      await _storage.delete(key: 'currentUser');

  static Future<User?> getUser() async {
    final String? read = await _storage.read(key: 'currentUser');
    return read != null ? User.fromJson(json.decode(read)) : null;
  }
}
