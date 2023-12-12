import 'package:flutter_guis/calendar/models/date_model.dart';

int return_no_of_days(int month, int year) {
  var is_leap = () {
    if (year % 4 == 0) {
      if (year % 100 == 0) {
        if (year % 400 == 0) {
          return true;
        } else {
          return false;
        }
      } else {
        return true;
      }
    } else {
      return false;
    }
  }();

  // var is_leap = false;

  // if (year % 4 == 0) {
  //   if (year % 100 == 0) {
  //     if (year % 400 == 0) {
  //       is_leap = true;
  //     } else {
  //       is_leap = false;
  //     }
  //   } else {
  //     is_leap = true;
  //   }
  // } else {
  //   is_leap = false;
  // }

  var to_ret = 28 +
      (month + (month / 8).floor()) % 2 +
      2 % month +
      2 * (1 / month).floor();

  // if (to_ret == 28 && is_leap) {
  //   return to_ret + 1;
  // } else {
  //   return to_ret;
  // }

  return to_ret == 28 && is_leap ? to_ret + 1 : to_ret;
}

List<List<(int, bool)>> return_2D_list(int dayCount, DateTime date) {
  List<List<(int, bool)>> to_ret =
      List<List<(int, bool)>>.empty(growable: true);
  int wkDay = date.weekday == 7 ? 0 : date.weekday;
  (int, int) wkDayPastMonth = () {
    int year = date.month == 1 ? date.year - 1 : date.year;
    int month = date.month == 1 ? 12 : date.month - 1;
    int day = return_no_of_days(month, year);
    int result = DateTime.utc(year, month, day).weekday;
    return (
      result == 7 ? 0 : DateTime.utc(year, month, day).weekday,
      return_no_of_days(month, year)
    );
  }();

  int startCount = 1;
  int preceedingCount = wkDayPastMonth.$2 - wkDayPastMonth.$1;
  int proceedingCount = 1;
  for (int i = 0; i < 6; ++i) {
    // for every week
    List<(int, bool)> week =
        List<(int, bool)>.empty(growable: true); // create an array of 7 days
    for (int j = 0; j < 7; ++j) {
      // for every day
      if (startCount <= dayCount) {
        // is the startcount not greater than daycount
        if (i == 0) {
          // is it the first week
          if (j == wkDay) {
            // is it the 1st day of the month
            week.add((startCount, true));
            ++wkDay;
            ++startCount;
          } else {
            week.add((preceedingCount, false));
            ++preceedingCount;
          }
        } else {
          // is it not the first week
          week.add((startCount, true));
          ++startCount;
        }
      } else {
        // if it startcount is greater than daycount
        week.add((proceedingCount, false));
        ++proceedingCount;
      }
    }
    to_ret.add(week);
  }

  return to_ret;
}

String month_name(Month month) {
  switch (month) {
    case Month.January:
      return "January";
    case Month.February:
      return "February";
    case Month.March:
      return "March";
    case Month.April:
      return "April";
    case Month.May:
      return "May";
    case Month.June:
      return "June";
    case Month.July:
      return "July";
    case Month.August:
      return "August";
    case Month.September:
      return "September";
    case Month.October:
      return "October";
    case Month.November:
      return "November";
    case Month.December:
      return "December";
  }
}
