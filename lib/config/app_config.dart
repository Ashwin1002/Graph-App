import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:stock_market/core/core.dart';

class AppConfig {
  /// initialize app functions on app init
  static Future<void> initialize() async {
    // SystemChrome.setPreferredOrientations([
    //   DeviceOrientation.portraitUp,
    // ]);

    await Future.wait([
      /// localization initialization
      EasyLocalization.ensureInitialized(),

      /// DI config
      configureInjection(),

      /// Path provider Initialization
      AppPathProvider.initPath(),

      /// Initialization of EnvHelper to load file from [.env]
      EnvHelper.init(),
    ]);

    HydratedBloc.storage = await HydratedStorage.build(
        storageDirectory: Directory(AppPathProvider.path));
  }

  static EasyLocalization localize(Widget app) => EasyLocalization(
        path: AppConstants.translations,
        supportedLocales: const <Locale>[
          Locale('en'),
        ],
        fallbackLocale: const Locale('en'),
        useFallbackTranslations: true,
        child: app,
      );
}
