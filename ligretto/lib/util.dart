import 'package:intl/intl.dart';

extension DateTimeFormatter on DateTime {
  String format() {
    return DateFormat(" yyyy\n MM.dd\n").add_Hm().format(this);
    //return DateFormat.yMd('en_US').format(this);
  }
}