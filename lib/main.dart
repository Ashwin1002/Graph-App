import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stock_market/core/core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Future.wait(
    [
      /// Dependency Injection initialization
      configureInjection(),
    ],
  );

  runApp(const MyApp());
}

final _appRouter = sl<AppRouter>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      Device.setScreenSize(context, constraints);
      return MaterialApp.router(
        /// app title
        title: 'Stock Graph App',
        debugShowCheckedModeBanner: false,

        routeInformationParser: _appRouter.defaultRouteParser(),
        routerDelegate: AutoRouterDelegate(_appRouter),

        //theme config
        theme: ThemeConfigs.lightTheme(),
        darkTheme: ThemeConfigs.darkTheme(),
      );
    });
  }
}
