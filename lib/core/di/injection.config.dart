// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i5;
import 'package:stock_market/core/core.dart' as _i7;
import 'package:stock_market/core/di/service_module.dart' as _i12;
import 'package:stock_market/core/network/dio/config/dio_config.dart' as _i3;
import 'package:stock_market/core/network/service/impl/remote_service_impl.dart'
    as _i8;
import 'package:stock_market/core/router/app_router.dart' as _i6;
import 'package:stock_market/src/home/data/repository/home_remote_repository.dart'
    as _i9;
import 'package:stock_market/src/home/domain/repositories/home_remote_repositoy_impl.dart'
    as _i10;
import 'package:stock_market/src/home/domain/usecases/get_stocks_usecase.dart'
    as _i11;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final serviceModule = _$ServiceModule();
    gh.factory<_i3.DioConfigs>(() => _i3.DioConfigs());
    gh.singleton<_i4.FlutterSecureStorage>(() => serviceModule.secureStorage);
    gh.singleton<_i5.InternetConnectionChecker>(
        () => serviceModule.connectivity);
    gh.singleton<_i6.AppRouter>(() => _i6.AppRouter());
    gh.factory<_i7.RemoteService>(() => _i8.RemoteServiceImpl());
    gh.factory<_i9.HomeRemoteRepository>(() => _i10.HomeRemoteRepositoryImpl());
    gh.factory<_i11.GetStocksUsecase>(() => _i11.GetStocksUsecase(
        remoteRepository: gh<_i9.HomeRemoteRepository>()));
    return this;
  }
}

class _$ServiceModule extends _i12.ServiceModule {}
