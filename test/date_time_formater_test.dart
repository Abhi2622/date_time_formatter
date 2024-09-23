import 'package:date_time_formatter/date_time_formatter.dart';
import 'package:flutter/foundation.dart';

void main() {
  DateTime now = DateTime.now();

  if (kDebugMode) {
    print(now.toAppDateTime(DateFormatEnum.appDate));
  }
}
