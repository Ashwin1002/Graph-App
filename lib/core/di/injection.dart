import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:stock_market/core/di/injection.config.dart';

///
///Dependency Injection Cannot be done with classes with constructors
/// Here, an instance of GetIt is made [sl] which stands for 'Service Locator'
///
final GetIt sl = GetIt.instance;

@injectableInit
Future<void> configureInjection() async {
  sl.init();
}
