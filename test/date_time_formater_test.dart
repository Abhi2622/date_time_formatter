import 'package:date_and_time_formatter/date_time_formatter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Date formatting tests', () {
    DateTime? testDate;

    setUp(() {
      // Initialize test date (August 20, 2023, at 3:45 PM)
      testDate = DateTime(2023, 8, 20, 15, 45);
    });

    test('Format date as appDate (MMM dd, y)', () {
      String formattedDate = testDate.toAppDateTime(DateFormatEnum.appDate);
      expect(formattedDate, 'Aug 20, 2023');
    });

    test('Format date as dateMonthYear (dd MMM, y)', () {
      String formattedDate =
          testDate.toAppDateTime(DateFormatEnum.dateMonthYear);
      expect(formattedDate, '20 Aug, 2023');
    });

    test('Format date as dateMonth (dd MMM)', () {
      String formattedDate = testDate.toAppDateTime(DateFormatEnum.dateMonth);
      expect(formattedDate, '20 Aug');
    });

    test('Format date as dateOnly (dd)', () {
      String formattedDate = testDate.toAppDateTime(DateFormatEnum.dateOnly);
      expect(formattedDate, '20');
    });

    test('Format date as yearMonthDay (y-MM-dd)', () {
      String formattedDate =
          testDate.toAppDateTime(DateFormatEnum.yearMonthDay);
      expect(formattedDate, '2023-08-20');
    });

    test('Format date as time (hh:mm a)', () {
      String formattedTime = testDate.toAppDateTime(DateFormatEnum.time);
      expect(formattedTime, '03:45 PM');
    });

    test('Format date as timeWithDate (hh:mm a, MMM dd y)', () {
      String formattedDateTime =
          testDate.toAppDateTime(DateFormatEnum.timeWithDate);
      expect(formattedDateTime, '03:45 PM, Aug 20 2023');
    });

    test('Format date as dateWithTime (dd MMM, y hh:mm a)', () {
      String formattedDateTime =
          testDate.toAppDateTime(DateFormatEnum.dateWithTime);
      expect(formattedDateTime, '20 Aug, 2023 03:45 PM');
    });

    test('Format date as timeOnly (hh:mm)', () {
      String formattedTimeOnly =
          testDate.toAppDateTime(DateFormatEnum.timeOnly);
      expect(formattedTimeOnly, '03:45');
    });

    test('Null date should return empty string', () {
      DateTime? nullDate;
      String formattedDate = nullDate.toAppDateTime(DateFormatEnum.appDate);
      expect(formattedDate, '');
    });
  });
}
