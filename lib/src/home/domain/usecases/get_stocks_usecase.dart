import 'package:injectable/injectable.dart';
import 'package:stock_market/core/core.dart';
import 'package:stock_market/src/home/data/model/response/response_model.dart';
import 'package:stock_market/src/home/data/repository/home_remote_repository.dart';

@Injectable()
class GetStocksUsecase implements NoParamUseCase<ResponseModel> {
  const GetStocksUsecase({
    required HomeRemoteRepository remoteRepository,
  }) : _remoteRepository = remoteRepository;

  final HomeRemoteRepository _remoteRepository;

  @override
  EitherFutureData<ResponseModel> call() {
    return _remoteRepository.getStocksData();
  }
}
