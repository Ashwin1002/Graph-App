import 'dart:async';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:stock_market/core/core.dart';

@Injectable(as: RemoteService)
class RemoteServiceImpl extends RemoteService {
  Dio _getDioClient(Dio dio) {
    return DioClient(dio: dio).addInterceptors(
      [
        LoggingInterceptor(level: Level.basic),
      ],
    );
  }

  ///get reponse
  @override
  Future getResponse({
    required Dio dio,
    required String endPoint,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    void Function(int count, int total)? onRecieveProgress,
  }) async {
    try {
      final response = await _getDioClient(dio).get(
        '${dio.options.baseUrl}/$endPoint',
        queryParameters: queryParameters,
        cancelToken: cancelToken,
        onReceiveProgress: onRecieveProgress,
      );
      return response.data;
    } on DioException catch (err) {
      throw ServerException(DioExceptionUtil.handleError(err));
    }
  }

  @override
  Future postResponse({
    required Dio dio,
    required String endPoint,
    dynamic payloadObj,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    void Function(int count, int total)? onSendProgress,
    void Function(int count, int total)? onRecieveProgress,
  }) async {
    try {
      final response = await _getDioClient(dio).post(
        '${dio.options.baseUrl}/$endPoint',
        queryParameters: queryParameters,
        data: payloadObj == null ? null : FormData.fromMap(payloadObj),
        cancelToken: cancelToken,
        onReceiveProgress: onRecieveProgress,
        onSendProgress: onSendProgress,
      );
      if (response.statusCode == 204) {
        return null;
      }

      return response.data;
    } on DioException catch (err) {
      throw ServerException(DioExceptionUtil.handleError(err));
    }
  }

  @override
  Future patchResponse({
    required Dio dio,
    required String endPoint,
    dynamic payloadObj,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    void Function(int count, int total)? onSendProgress,
    void Function(int count, int total)? onRecieveProgress,
  }) async {
    try {
      final response = await _getDioClient(dio).patch(
        '${dio.options.baseUrl}/$endPoint',
        queryParameters: queryParameters,
        data: payloadObj == null ? null : FormData.fromMap(payloadObj),
        cancelToken: cancelToken,
        onReceiveProgress: onRecieveProgress,
        onSendProgress: onSendProgress,
      );

      return response.data;
    } on DioException catch (err) {
      throw ServerException(DioExceptionUtil.handleError(err));
    }
  }

  @override
  Future putResponse({
    required Dio dio,
    required String endPoint,
    dynamic payloadObj,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    void Function(int count, int total)? onSendProgress,
    void Function(int count, int total)? onRecieveProgress,
  }) async {
    try {
      final response = await _getDioClient(dio).put(
        '${dio.options.baseUrl}/$endPoint',
        queryParameters: queryParameters,
        data: payloadObj == null ? null : FormData.fromMap(payloadObj),
        cancelToken: cancelToken,
        onReceiveProgress: onRecieveProgress,
        onSendProgress: onSendProgress,
      );

      return response.data;
    } on DioException catch (err) {
      throw ServerException(DioExceptionUtil.handleError(err));
    }
  }

  @override
  Future deleteResponse({
    required Dio dio,
    required String endPoint,
    CancelToken? cancelToken,
  }) async {
    try {
      final response = await _getDioClient(dio).delete(
        '${dio.options.baseUrl}/$endPoint',
        cancelToken: cancelToken,
      );
      if (response.statusCode == 204) {
        return;
      }
      return response.data;
    } on DioException catch (err) {
      throw ServerException(DioExceptionUtil.handleError(err));
    }
  }
}
