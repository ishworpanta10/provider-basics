import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart' as storage;
import 'package:provider_demo/core/utils/log_utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../data/models/user_model.dart';

class SharedPrefsManager {
  storage.FlutterSecureStorage secureStorage = const storage.FlutterSecureStorage();
  SharedPreferences? sharedPreferences;

  Future<void> saveKey({required var value}) async {
    try {
      await secureStorage.write(key: 'user_token', value: value);
    } catch (error) {
      await secureStorage.deleteAll();
    }
  }

  Future<String?> readKey() async {
    try {
      return await secureStorage.read(key: 'user_token');
    } catch (error) {
      return '';
    }
  }

  Future<void> saveUserData({required UserModel user}) async {
    sharedPreferences = await SharedPreferences.getInstance();
    try {
      String userData = json.encode(user.toMap());
      await sharedPreferences?.setString('userData', userData);
    } catch (error) {
      LogUtils.logError(error);
    }
  }

  Future<UserModel?> getUserData() async {
    sharedPreferences = await SharedPreferences.getInstance();
    try {
      if (sharedPreferences != null) {
        var userData = json.decode(sharedPreferences!.getString('userData')!);
        UserModel? user = UserModel.fromMap(userData);
        return user;
      }
    } catch (error) {
      LogUtils.logError('error fetching user data $error');
      return null;
    }
  }

  void clearUserData() async {
    sharedPreferences = await SharedPreferences.getInstance();
    await secureStorage.deleteAll();
    await sharedPreferences?.clear();
  }
}
