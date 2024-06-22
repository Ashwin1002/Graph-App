import 'dart:convert';
import 'dart:isolate';

import 'package:flutter/services.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:stock_market/core/core.dart';
import 'package:stock_market/src/home/data/model/stock/stock_model.dart';
import 'package:stock_market/src/home/data/repository/home_remote_repository.dart';

@Injectable(as: HomeRemoteRepository)
class HomeRemoteRepositoryImpl extends HomeRemoteRepository {
  @override
  EitherFutureData<List<StockModel>> getStocks() async {
    // try {
    var data = await rootBundle.loadString(AppConstants.nepseStockData);
    return right(
      await Isolate.run(
        () async {
          var result = jsonDecode(data) as List<dynamic>;
          return List<dynamic>.from(result)
              .map((e) => StockModel.fromJson(e))
              .toList();
        },
      ),
    );
    // } catch (_) {
    //   debugPrint('Error occurred at: $_');
    //   return left('Cannot parse data');
    // }
  }
}
