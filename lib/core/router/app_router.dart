import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:stock_market/core/router/app_router.gr.dart';

@Singleton()
@Injectable()
@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {
  AppRouter();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, initial: true),
      ];
}
