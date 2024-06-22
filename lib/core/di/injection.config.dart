// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i4;
import 'package:stock_market/core/di/service_module.dart' as _i6;
import 'package:stock_market/core/router/app_router.dart' as _i5;

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
    gh.singleton<_i3.FlutterSecureStorage>(() => serviceModule.secureStorage);
    gh.singleton<_i4.InternetConnectionChecker>(
        () => serviceModule.connectivity);
    gh.singleton<_i5.AppRouter>(() => _i5.AppRouter());
    return this;
  }
}

class _$ServiceModule extends _i6.ServiceModule {}
