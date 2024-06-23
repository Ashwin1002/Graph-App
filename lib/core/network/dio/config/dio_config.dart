import 'package:injectable/injectable.dart';

@injectable
class DioConfigs {
  final int receiveTimeout = 10 * 1000;
  final int connectionTimeout = 10 * 1000;
}
