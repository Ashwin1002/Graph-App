import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stock_market/src/home/data/model/nepse_data/nepse_data_model.dart';

part 'response_model.freezed.dart';
part 'response_model.g.dart';

@freezed
class ResponseModel with _$ResponseModel {
  const ResponseModel._();
  const factory ResponseModel({
    @Default('') @JsonKey(name: 'response_code') String responseCode,
    @Default('') @JsonKey(name: 'response_message') String responseMessage,
    required NepseDataModel data,
  }) = _ResponseModel;

  factory ResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ResponseModelFromJson(json);

  bool get isEmpty => this == const ResponseModel(data: NepseDataModel.empty);
}
