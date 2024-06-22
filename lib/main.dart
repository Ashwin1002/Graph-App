import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stock_market/core/di/injection.dart';
import 'package:stock_market/core/router/app_router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      /// app title
      title: 'Stock Graph App',
      debugShowCheckedModeBanner: false,

      routeInformationParser: sl<AppRouter>().defaultRouteParser(),
      routerDelegate: AutoRouterDelegate(sl<AppRouter>()),
    );
  }
}
