# date_and_time_formatter

date_time_formatter is a Flutter package that provides easy and flexible formatting for DateTime objects in various formats using the intl package.

## Installation:

To add date_time_formatter to your project, include it in your pubspec.yaml file:

**dependencies:**
date_time_formatter: latest_version


Then, run:
flutter pub get


## Usage:

After installation, import date_time_formatter in your Dart code:

`import 'package:date_time_formatter/date_time_formatter.dart';

void main() {
DateTime now = DateTime.now();

print(now.toAppDateTime(DateFormatEnum.appDate));
// Example output: Aug 12, 2024
}`


## Example:

_`DateTime now = DateTime.now();

print(now.toAppDateTime(DateFormatEnum.dateMonthYear));    // Output: "12 Aug, 2024"
print(now.toAppDateTime(DateFormatEnum.dateMonth));   // Output: "12 Aug"
print(now.toAppDateTime(DateFormatEnum.dateOnly)); // Output: "12"`_


