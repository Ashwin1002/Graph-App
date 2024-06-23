import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:stock_market/core/core.dart';

class DioExceptionUtil {
  // general methods:-----------------------------------------------------------
  static String handleError(DioException error) {
    // log('status code => ${error.response?.statusCode}\n${error.response?.statusMessage}');
    debugPrint('error Message => ${error.response?.data}');
    String errorDescription = '';
    switch (error.type) {
      case DioExceptionType.cancel:
        errorDescription = 'request_cancelled'.localize();
        break;
      case DioExceptionType.connectionError:
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.unknown:
        errorDescription = 'unknown_error'.localize();
        break;
      case DioExceptionType.receiveTimeout:
        errorDescription = 'receive_timeout'.localize();
        break;

      case DioExceptionType.badResponse:
        debugPrint(
            '++++++++++++++++++\nerror while processing response: \n\nstatus code: ${error.response}\n\nresponse: ${error.response?.data}\n\n++++++++++++++++++++');
        final statusCode = error.response?.statusCode ?? 0;
        switch (statusCode) {
          case 401:

            // if (context != null) {

            errorDescription = 'unauthorized_access'.localize();
            // }
            break;
          case 404:
            errorDescription = 'page_not_found'.localize();
            break;
          case 429:
            errorDescription = 'too_many_request'.localize();
            break;
          case 500:
            errorDescription = 'internal_server_error'.localize();
          case 502:
            errorDescription = 'server_updating'.localize();
            break;
          case 523:
            errorDescription = 'unreachable_server'.localize();
            break;
          default:
            errorDescription = 'unknown_error'.localize();
            break;
        }
        break;
      case DioExceptionType.sendTimeout:
        errorDescription = 'send_timeout'.localize();
        break;
      case DioExceptionType.badCertificate:
        errorDescription = 'bad_certificate'.localize();
        break;
      default:
        errorDescription = 'unknown_error'.localize();
        break;
    }
    return errorDescription;
  }
}
