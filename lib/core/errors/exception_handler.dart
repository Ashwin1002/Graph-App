import 'package:flutter/foundation.dart';
import 'package:stock_market/core/errors/errors.dart';

class ExceptionHandler {
  ExceptionHandler._();

  static ExceptionHandler get instance => ExceptionHandler._();
  String parseError(error) {
    String errorTxt = '';

    /// api error
    if (error is ServerException) {
      errorTxt = error.message;

      // cache error
    } else if (error is CacheException) {
      errorTxt = error.message;
    }

    /// other errors
    else {
      errorTxt = kDebugMode
          ? error.toString()
          : 'Some Error Occurred while processing response';
    }
    return errorTxt;
  }
}
