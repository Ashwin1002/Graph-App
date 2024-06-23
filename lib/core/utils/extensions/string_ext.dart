import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

final _nepFormatter = NumberFormat.simpleCurrency(
    decimalDigits: 0, name: 'Rs. ', locale: 'hi-IN');

const fullMonthFormat = 'd MMMM, yyyy';

extension StringExt on String {
  /// first letter capitalize
  String capitalize() => trim().isEmpty
      ? ''
      : trim().substring(0, 1).toUpperCase() + trim().substring(1);

  /// format currency to current date
  String toNepaliCurrency() => _nepFormatter.format(trim());

  String localize({
    List<String>? args,
    Map<String, String>? namedArgs,
    String? gender,
    BuildContext? context,
  }) =>
      trim().tr(
          args: args, namedArgs: namedArgs, gender: gender, context: context);

  /// get time ago from current date
  String toTimeAgo({DateTime? dateTime}) {
    final dt = dateTime ?? DateTime.now().toLocal();
    Duration diff = DateTime.now().toLocal().difference(dt);

    if (diff.inDays > 1) {
      return '${diff.inDays} day(s) ago';
    }
    if (diff.inDays == 1) {
      return 'yesterday';
    } else if (diff.inHours >= 1) {
      return '${diff.inHours} hour(s) ago';
    } else if (diff.inMinutes >= 1) {
      return '${diff.inMinutes} minute(s) ago';
    } else if (diff.inSeconds >= 1) {
      return '${diff.inSeconds} second(s) ago';
    } else {
      return 'just now';
    }
  }

  String toUpcomingDays() {
    final dt = (DateTime.tryParse(trim()) ?? DateTime.now()).toLocal();
    Duration diff = dt.difference(DateTime.now().toLocal());

    if (diff.inHours > 24) {
      return '${diff.inDays} days remaining';
    } else if (diff.inHours == 24) {
      return 'Tomorrow';
    } else if (diff.inHours >= 1) {
      return '${diff.inHours} hours remaining';
    } else if (diff.inMinutes >= 1) {
      return '${diff.inMinutes} minutes remaining';
    } else if (diff.inSeconds >= 1) {
      return '${diff.inSeconds} seconds remaining';
    } else if (diff.inDays == 0 && diff.inHours < 0) {
      return '${diff.inHours.abs()} hours ago';
    } else if (diff.inDays == 0 && diff.inHours < 0 && diff.inMinutes < 0) {
      return '${diff.inMinutes.abs()} minutes ago';
    } else if (diff.inDays == 0) {
      return 'Today';
    } else if (diff.inDays == -1) {
      return 'Yesterday';
    } else if (diff.inDays < -1) {
      return '${diff.inDays.abs()} days ago';
    } else {
      return DateFormat(fullMonthFormat).format(dt);
    }
  }

  String getAMPM({bool getSuffixOnly = false}) {
    try {
      int data = int.parse(trim().split(':').first);
      if (data > 12) {
        return getSuffixOnly
            ? 'pm'
            : '${trim().replaceAll(':${trim().split(':').last}', '')} pm';
      } else {
        return getSuffixOnly
            ? 'am'
            : '${trim().replaceAll(':${trim().split(':').last}', '')} am';
      }
    } catch (_) {
      return '';
    }
  }

  /// covert date time to hours
  String toHourMinuteFormat({String format = 'hh:mm a'}) {
    try {
      final dateFormat = DateFormat(format);
      return dateFormat.format(DateTime.parse(trim())).toLowerCase();
    } catch (_) {
      return '';
    }
  }

  ///custom date format
  String formatDateTime({String format = 'yyyy-MM-dd'}) =>
      DateFormat(format).format(DateTime.tryParse(trim()) ?? DateTime.now());

  /// convert to url
  String toUrl() {
    if (trim().contains('http://') || trim().contains('https://')) {
      return trim();
    } else {
      return 'https://${trim()}';
    }
  }

  String getSize() {
    final kb = double.parse(trim()) / 1024;
    final mb = kb / 1024;

    if (kb > 1024) {
      return '${mb.toStringAsFixed(2)} MB';
    } else if (kb <= 1024) {
      return '${kb.toStringAsFixed(2)} KB';
    } else {
      return '${double.parse(trim()).toStringAsFixed(2)} Bytes';
    }
  }

  String getFirstLetters({bool isStartEnd = false}) {
    try {
      // Remove leading and trailing whitespace
      final trimmedString = trim();

      // Check if the string is empty or only contains whitespace
      if (trimmedString.isEmpty) {
        return '';
      }

      // Split the string by whitespace
      final words = trimmedString.split(RegExp(r'\s+'));

      // Filter out empty strings after splitting
      final nonEmptyWords = words.where((word) => word.isNotEmpty);

      // Extract the first letter from each word
      final firstLetters = nonEmptyWords
          .map((word) {
            // Handle surrogate pairs for characters outside the BMP
            return word.runes.firstWhere((rune) => rune != 0, orElse: () => 0);
          })
          .where((rune) => rune != 0)
          .map((rune) => String.fromCharCode(rune));

      if (firstLetters.isNotEmpty && isStartEnd && firstLetters.length > 1) {
        return '${firstLetters.first}${firstLetters.last}';
      }

      // Join the first letters together
      return firstLetters.join();
    } catch (_) {
      return '';
    }
  }

  // This method is used to mask the email address
  // For example, if the email is 'xyzabcd@gmail.com', the masked email will be 'xy****@gmai.com'
  String maskEmail() {
    if (isEmpty) {
      return ''; // Handle the case where email is null or empty
    }

    int atIndex = indexOf('@');
    if (atIndex <= 0) {
      return this; // Return the original email if '@' is not found or is at the beginning
    }

    String maskedPart =
        substring(0, 1) + '*' * (atIndex - 2) + substring(atIndex - 1, atIndex);
    String staticPart = substring(atIndex);

    return '$maskedPart$staticPart';
  }

  DateTime convertToEngDate() => DateTime.tryParse(trim()) ?? DateTime.now();

  String convertTimeOfDay() => trim().isEmpty
      ? ''
      : trim()
          .replaceAll('TimeOfDay', '')
          .replaceAll('(', '')
          .replaceAll(')', '');
}

/// Returns a string representation of the given [DateTime] object.
/// For example: 4:30 PM, 1 Jan 2021, 3 hours ago, etc.
String timesAgo(DateTime dateTime) {
  final now = DateTime.now();
  final difference = now.difference(dateTime);

  if (difference.inDays > 0) {
    return DateFormat('d MMM yyyy').format(dateTime);
  } else if (difference.inHours > 0) {
    return '${difference.inHours} hours ago';
  } else if (difference.inMinutes > 0) {
    return '${difference.inMinutes} minutes ago';
  } else {
    return 'Just now';
  }
}

String removeTrailingZeros(double number) {
  RegExp regex = RegExp(r'([.]*0)(?!.*\d)');
  String result = number.toString().replaceAll(regex, '');
  return result;
}

/// Formats duration in milliseconds to xx:xx:xx format.
String durationFormatter(int milliSeconds) {
  var seconds = milliSeconds ~/ 1000;
  final hours = seconds ~/ 3600;
  seconds = seconds % 3600;
  var minutes = seconds ~/ 60;
  seconds = seconds % 60;
  final hoursString = hours >= 10
      ? '$hours'
      : hours == 0
          ? '00'
          : '0$hours';
  final minutesString = minutes >= 10
      ? '$minutes'
      : minutes == 0
          ? '00'
          : '0$minutes';
  final secondsString = seconds >= 10
      ? '$seconds'
      : seconds == 0
          ? '00'
          : '0$seconds';
  final formattedTime =
      '${hoursString == '00' ? '' : '$hoursString:'}$minutesString:$secondsString';
  return formattedTime;
}
