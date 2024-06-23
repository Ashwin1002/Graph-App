import 'dart:isolate';

import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:stock_market/core/core.dart';
import 'package:stock_market/src/home/data/model/response/response_model.dart';
import 'package:stock_market/src/home/data/repository/home_remote_repository.dart';

@Injectable(as: HomeRemoteRepository)
class HomeRemoteRepositoryImpl extends HomeRemoteRepository {
  @override
  EitherFutureData<ResponseModel> getStocksData() async {
    try {
      var response = await sl<RemoteService>().getResponse(
        dio: Dio(),
        endPoint: const String.fromEnvironment('API_KEY'),
      );

      return right(
        await Isolate.run(
          () => ResponseModel.fromJson(response),
        ),
      );
    } catch (e) {
      return left(ExceptionHandler.instance.parseError(e));
    }
  }
}
