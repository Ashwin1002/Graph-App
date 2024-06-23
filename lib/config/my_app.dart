import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:stock_market/core/core.dart';

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
        title: 'app_name'.localize(),
        debugShowCheckedModeBanner: false,

        routeInformationParser: _appRouter.defaultRouteParser(),
        routerDelegate: AutoRouterDelegate(_appRouter),

        //theme config
        theme: ThemeConfigs.lightTheme(),
        darkTheme: ThemeConfigs.darkTheme(),

        //localization config
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
      );
    });
  }
}
