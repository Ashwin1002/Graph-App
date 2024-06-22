import 'package:fpdart/fpdart.dart';

typedef EitherFutureData<T> = Future<Either<String, T>>;

typedef EitherData<T> = Either<String, T>;
