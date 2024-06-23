import 'package:flutter/material.dart';

enum DayType {
  oneDay('1D'),
  oneWeek('1W'),
  oneMonth('1M'),
  threeMonths('3M'),
  oneYear('1Y'),
  fiveYears('5Y'),
  max('MAX');

  const DayType(this.name);

  final String name;

  bool get isOneDay => this == DayType.oneDay;
  bool get isOneWeek => this == DayType.oneWeek;
  bool get isOneMonth => this == DayType.oneMonth;
  bool get isThreeMonths => this == DayType.threeMonths;
  bool get isOneYear => this == DayType.oneYear;
  bool get isFiveYears => this == DayType.fiveYears;
  bool get isMax => this == DayType.max;
}

var now = DateTime.parse(DateTime.now().toIso8601String().substring(0, 10));

extension DayTypeExt on DayType {
  DateTimeRange? getDays() {
    return switch (this) {
      DayType.oneDay => DateTimeRange(start: now, end: now),
      DayType.oneWeek => DateTimeRange(
          start: now.subtract(const Duration(days: 7)),
          end: now,
        ),
      DayType.oneMonth => DateTimeRange(
          start: DateTime(now.year, now.month, 01),
          end: DateTime(now.year, now.month + 1, 1)
              .subtract(const Duration(days: 1)),
        ),
      DayType.threeMonths => DateTimeRange(
          start: DateTime(now.year, now.month - 3, now.day),
          end: now,
        ),
      DayType.oneYear => DateTimeRange(
          start: DateTime(now.year - 1, now.month, now.day),
          end: now,
        ),
      DayType.fiveYears => DateTimeRange(
          start: DateTime(now.year - 5, now.month, now.day),
          end: now,
        ),
      _ => null,
    };
  }
}
