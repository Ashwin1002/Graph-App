import 'package:stock_market/core/core.dart';
import 'package:stock_market/src/home/data/model/stock/stock_model.dart';

abstract class HomeRemoteRepository {
  EitherFutureData<List<StockModel>> getStocks();
}
