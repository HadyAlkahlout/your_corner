import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static SharedPreferences? sharedPreferences;

  static Future<SharedPreferences> init() async {
    return sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<bool> setData({
    required String key,
    required dynamic value,
  }) async {
    if (value is bool) {
      return await sharedPreferences!.setBool(key, value);
    } else if (value is String) {
      return await sharedPreferences!.setString(key, value);
    } else if (value is int) {
      return await sharedPreferences!.setInt(key, value);
    } else if (value is double) {
      return await sharedPreferences!.setDouble(key, value);
    } else {
      return await sharedPreferences!.setStringList(key, value);
    }
  }

  static bool? getBoolean({
    required String key,
  }) {
    return sharedPreferences!.getBool(key);
  }

  static String? getString({
    required String key,
  }) {
    return sharedPreferences!.getString(key);
  }

  static int? getInt({
    required String key,
  }) {
    return sharedPreferences!.getInt(key);
  }

  static double? getDouble({
    required String key,
  }) {
    return sharedPreferences!.getDouble(key);
  }

  static List<String>? getStringList({
    required String key,
  }) {
    return sharedPreferences!.getStringList(key);
  }

  static Future<bool> deleteLocal() {
    return sharedPreferences!.clear();
  }

}
