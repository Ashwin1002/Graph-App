import 'package:json_annotation/json_annotation.dart';

class DateTimeJsonConverter implements JsonConverter<DateTime, String> {
  const DateTimeJsonConverter();

  @override
  DateTime fromJson(String json) {
    return DateTime.parse(json);
  }

  @override
  String toJson(DateTime dateTime) {
    return dateTime.toIso8601String();
  }
}
