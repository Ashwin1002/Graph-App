import 'package:flutter/material.dart';
import 'package:stock_market/config/app_config.dart';
import 'package:stock_market/config/my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await AppConfig.initialize();

  runApp(AppConfig.localize(const MyApp()));
}
