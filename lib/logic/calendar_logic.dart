int return_no_of_days(int month, int year) {
  var is_leap = false;

  if (year % 4 == 0) {
    if (year % 100 == 0) {
      if (year % 400 == 0) {
        is_leap = true;
      } else {
        is_leap = false;
      }
    } else {
      is_leap = true;
    }
  } else {
    is_leap = false;
  }

  var to_ret = 28 +
      (month + (month / 8).floor()) % 2 +
      2 % month +
      2 * (1 / month).floor();

  if (to_ret == 28 && is_leap) {
    return to_ret + 1;
  } else {
    return to_ret;
  }
}

List<List<int>> return_2D_list(int dayCount, DateTime date) {
  List<List<int>> to_ret = List<List<int>>.empty(growable: true);
  int wkDay = date.weekday == 7 ? 0 : date.weekday;

  int startCount = 1;

  for (int i = 0; i < 6; ++i) {
    List<int> week = List<int>.empty(growable: true);
    for (int j = 0; j < 7; ++j) {
      if (startCount <= dayCount) {
        if (i == 0) {
          if (j == wkDay) {
            week.add(startCount);
            ++wkDay;
            ++startCount;
          } else {
            week.add(0);
          }
        } else {
          week.add(startCount);
          ++startCount;
        }
      } else {
        week.add(0);
      }
    }
    to_ret.add(week);
  }

  return to_ret;
}
