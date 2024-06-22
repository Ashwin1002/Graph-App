import 'package:stock_market/core/utils/typedef.dart';

abstract class UseCase<T, Params> {
  EitherFutureData<T> call(Params params);
}

abstract class NoParamUseCase<T> {
  EitherFutureData<T> call();
}
