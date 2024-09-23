library date_and_time_formatter;

import 'package:intl/intl.dart';

enum DateFormatEnum {
  appDate,
  dateMonthYear,
  dateMonth,
  dateOnly,
  yearMonthDay,
  time,
  timeWithDate,
  dateWithTime,
  timeOnly,
}

extension StringValues on DateFormatEnum {
  String? get string {
    switch (this) {
      case DateFormatEnum.appDate:
        return 'MMM dd, y';
      case DateFormatEnum.dateMonthYear:
        return 'dd MMM, y';
      case DateFormatEnum.dateMonth:
        return 'dd MMM';
      case DateFormatEnum.dateOnly:
        return 'dd';
      case DateFormatEnum.yearMonthDay:
        return 'y-MM-dd';
      case DateFormatEnum.time:
        return 'hh:mm a';
      case DateFormatEnum.timeWithDate:
        return 'hh:mm a, MMM dd y';
      case DateFormatEnum.dateWithTime:
        return 'dd MMM, y hh:mm a';
      case DateFormatEnum.timeOnly:
        return 'hh:mm';
    }
  }
}

extension DateExtensions on DateTime? {
  String toAppDateTime(DateFormatEnum dateFormats) {
    DateTime? date = this;
    if (date == null) {
      return '';
    }
    DateFormat dateFormat = DateFormat(dateFormats.string);
    return dateFormat.format(date.toUtc().add(DateTime.now().timeZoneOffset));
  }
}
