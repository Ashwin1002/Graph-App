import 'package:injectable/injectable.dart';
import 'package:stock_market/core/core.dart';
import 'package:stock_market/src/home/data/model/stock/stock_model.dart';
import 'package:stock_market/src/home/data/repository/home_remote_repository.dart';

@Injectable()
class GetStocksUsecase implements NoParamUseCase<List<StockModel>> {
  const GetStocksUsecase({
    required HomeRemoteRepository remoteRepository,
  }) : _remoteRepository = remoteRepository;

  final HomeRemoteRepository _remoteRepository;

  @override
  EitherFutureData<List<StockModel>> call() {
    return _remoteRepository.getStocks();
  }
}
