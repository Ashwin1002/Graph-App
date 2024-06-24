import 'package:dio/dio.dart';
import 'package:stock_market/core/core.dart';

final _config = sl<DioConfigs>();

class DioClient {
  DioClient({required Dio dio})
      : _dio = dio
          ..options.connectTimeout =
              Duration(milliseconds: _config.connectionTimeout)
          ..options.receiveTimeout =
              Duration(milliseconds: _config.receiveTimeout)
          ..options.baseUrl = sl<EnvHelper>().get('BASE_URL');

  final Dio _dio;

  Dio addInterceptors(Iterable<Interceptor> interceptors) {
    return _dio..interceptors.addAll(interceptors);
  }
}
