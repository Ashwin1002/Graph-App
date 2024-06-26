import 'package:stock_market/core/core.dart';
import 'package:stock_market/src/home/data/model/response/response_model.dart';

abstract class HomeRemoteRepository {
  EitherFutureData<ResponseModel> getStocksData();
}
