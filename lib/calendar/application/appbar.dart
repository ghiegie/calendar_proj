import 'package:flutter/material.dart';
import 'package:flutter_guis/calendar/logic/calendar_logic.dart';
import 'package:flutter_guis/calendar/models/date_model.dart';
import 'package:provider/provider.dart';

class CalendarAppBar extends StatelessWidget {
  final double barHeight;
  final double barWidth;

  const CalendarAppBar(
      {super.key, required this.barHeight, required this.barWidth});

  @override
  Widget build(BuildContext context) {
    //print(return_2D_list(return_no_of_days(2, 2000)));

    return Container(
        height: barHeight,
        width: barWidth,
        color: const Color.fromARGB(255, 240, 132, 132),
        child: Center(
          child: LayoutBuilder(
            builder: (BuildContext context1, BoxConstraints constraints1) {
              return DateModifier(
                width: constraints1.maxWidth * 0.8,
                height: constraints1.maxHeight * 0.65,
              );
            },
          ),
        ));
  }
}

class DateModifier extends StatelessWidget {
  final double width;
  final double height;

  const DateModifier({super.key, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: LayoutBuilder(
        builder: (BuildContext context1, BoxConstraints constraints1) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonArr(
                width: constraints1.maxWidth / 4,
                height: constraints1.maxHeight,
              ),
              MonthDisplay(
                  width: constraints1.maxWidth / 6,
                  height: constraints1.maxHeight)
            ],
          );
        },
      ),
    );
  }
}

class ButtonArr extends StatelessWidget {
  final double width;
  final double height;

  const ButtonArr({super.key, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return Consumer<DateModel>(
      builder:(context, value, child) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          OutlinedButton(
            onPressed: () {
              value.changeDate(DateTime.now().year, DateTime.now().month, DateTime.now().day);
            },
            style: OutlinedButton.styleFrom(
              fixedSize: Size(
                width * 0.95 - (2 * height), 
                height
              ),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(5)
                ),
              )
            ), 
            child: const Text("Today"),
          ),
          TextButton(
            onPressed: () {
              value.changeDate(
                value.month == 1 ? value.year - 1 : value.year, 
                value.month == 1 ? 12 : value.month - 1, 1
              );
            },
            style: TextButton.styleFrom(
              fixedSize: Size(height, height),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(5)
                )
              ),
            ), 
            child: const FittedBox(
              child: Icon(Icons.keyboard_arrow_left),
            ),
          ),
          TextButton(
            onPressed: () {
              value.changeDate(
                value.month == 12 ? value.year + 1 : value.year, 
                value.month == 12 ? 1 : value.month + 1, 1
              );
            },
            style: TextButton.styleFrom(
              fixedSize: Size(height, height),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(5)
                )
              ),
            ), 
            child: const FittedBox(
              child: Icon(Icons.keyboard_arrow_right),
            ),
          ),
        ],
      ),
    );
  }
}

class MonthDisplay extends StatelessWidget {
  final double width;
  final double height;

  const MonthDisplay({super.key, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Consumer<DateModel>(
        builder: (context, value, child) =>
            Center(child: Text("${month_name(value.monthName)} ${value.year}")),
      ),
    );
  }
}
