import 'package:dio/dio.dart';

abstract class RemoteService {
  Future<dynamic> getResponse({
    required Dio dio,
    required String endPoint,
    Map<String, dynamic>? queryParameters,
    void Function(int count, int total)? onRecieveProgress,
  });

  Future<dynamic> deleteResponse({
    required Dio dio,
    required String endPoint,
    CancelToken? cancelToken,
  });

  Future<dynamic> postResponse({
    required Dio dio,
    required String endPoint,
    dynamic payloadObj,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    void Function(int count, int total)? onSendProgress,
    void Function(int count, int total)? onRecieveProgress,
  });

  Future<dynamic> putResponse({
    required Dio dio,
    required String endPoint,
    dynamic payloadObj,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    void Function(int count, int total)? onSendProgress,
    void Function(int count, int total)? onRecieveProgress,
  });

  Future<dynamic> patchResponse({
    required Dio dio,
    required String endPoint,
    dynamic payloadObj,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    void Function(int count, int total)? onSendProgress,
    void Function(int count, int total)? onRecieveProgress,
  });
}
