import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static SharedPreferences? sharedPreferences;

  static initcache() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<bool> savedata({
    required key,
    required dynamic value,
  }) async {
    if (value is String) return sharedPreferences!.setString(key, value);
    if (value is bool) return sharedPreferences!.setBool(key, value);
    if (value is double) return sharedPreferences!.setDouble(key, value);
    return await sharedPreferences!.setInt(key, value);
  }

  static getdata({
    required key,
  }) {
    return sharedPreferences?.get(key);
  }

  static removedata({required key}) async {
    return await sharedPreferences!.remove(key);
  }
}
