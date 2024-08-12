A Flutter package for formatting dates with various formats using the `intl` package.

## Installation

Add `date_time_formatter` to your `pubspec.yaml` file:

import 'package:date_time_formatter/date_time_formater.dart';

void main() {
DateTime now = DateTime.now();

print(now.toAppDateTime(DateFormatEnum.appDate));
} // Example output: Aug 12, 2024


Formats dates and times using predefined patterns.