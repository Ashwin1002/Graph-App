import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

@module
abstract class ServiceModule {
  @Singleton()
  FlutterSecureStorage get secureStorage => FlutterSecureStorage(
        aOptions: _getAndroidOptions(),
        iOptions: _getIOSOptions(),
      );

  @Singleton()
  InternetConnectionChecker get connectivity => InternetConnectionChecker();
}

AndroidOptions _getAndroidOptions() =>
    const AndroidOptions(encryptedSharedPreferences: true);

IOSOptions _getIOSOptions() =>
    const IOSOptions(accessibility: KeychainAccessibility.unlocked);
