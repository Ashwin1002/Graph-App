import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:stock_market/core/di/di.dart';

class SecureStorage {
  SecureStorage._();

  static final SecureStorage instance = SecureStorage._();

  Future<String?> getData({required String key}) async {
    return await sl<FlutterSecureStorage>().read(key: key);
  }

  Future<void> setData({required String key, required String value}) async {
    await sl<FlutterSecureStorage>().write(key: key, value: value);
  }

  Future<void> removeData({required String key}) async {
    await sl<FlutterSecureStorage>().delete(key: key);
  }

  Future<void> removeAllData() async {
    await sl<FlutterSecureStorage>().deleteAll();
  }

  Future<void> readAllData() async {
    await sl<FlutterSecureStorage>().readAll();
  }
}
