enum StockType {
  minutes('1Min'),
  hours('1H'),
  days('1D'),
  months('1M'),
  yearly('1Y');

  const StockType(this.name);

  final String name;

  bool get isMinutes => this == StockType.minutes;
  bool get isHours => this == StockType.hours;
  bool get isdays => this == StockType.days;
  bool get isMonths => this == StockType.months;
  bool get isyearly => this == StockType.yearly;
}

// var now = DateTime.parse(DateTime.now().toIso8601String().substring(0, 10));

// extension StockTypeExt on StockType {
//   DateTimeRange? getDays() {
//     return switch (this) {
//       DayType.oneDay => DateTimeRange(start: now, end: now),
//       DayType.oneWeek => DateTimeRange(
//           start: now.subtract(const Duration(days: 7)),
//           end: now,
//         ),
//       DayType.oneMonth => DateTimeRange(
//           start: DateTime(now.year, now.month, 01),
//           end: DateTime(now.year, now.month + 1, 1)
//               .subtract(const Duration(days: 1)),
//         ),
//       DayType.threeMonths => DateTimeRange(
//           start: DateTime(now.year, now.month - 3, now.day),
//           end: now,
//         ),
//       DayType.oneYear => DateTimeRange(
//           start: DateTime(now.year - 1, now.month, now.day),
//           end: now,
//         ),
//       DayType.fiveYears => DateTimeRange(
//           start: DateTime(now.year - 5, now.month, now.day),
//           end: now,
//         ),
//       _ => null,
//     };
//   }
// }
