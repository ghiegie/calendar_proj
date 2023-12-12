import 'package:flutter/material.dart';

enum Month {
  January,
  February,
  March,
  April,
  May,
  June,
  July,
  August,
  September,
  October,
  November,
  December
}

class DateModel extends ChangeNotifier {
  DateTime _date = DateTime.now();

  int get year => _date.year;
  int get month => _date.month;
  int get day => _date.day;
  int get weekDay => _date.weekday;

  Month get monthName => Month.values[_date.month - 1];

  void changeDate(int year, int month, int day) {
    _date = DateTime.utc(year, month, day);
    notifyListeners();
  }
}
