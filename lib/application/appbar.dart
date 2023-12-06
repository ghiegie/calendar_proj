import 'package:flutter/material.dart';

class CalendarAppBar extends StatelessWidget {
  final double barHeight;
  final double barWidth;

  static int sample = 30;

  const CalendarAppBar(
      {super.key, required this.barHeight, required this.barWidth});

  @override
  Widget build(BuildContext context) {
    //print(return_2D_list(return_no_of_days(2, 2000)));

    return Container(
        height: barHeight,
        width: barWidth,
        color: Colors.redAccent,
        child: Center(
          child: LayoutBuilder(
            builder: (BuildContext context1, BoxConstraints constraints1) {
              return DateModifier(
                width: constraints1.maxWidth / 4,
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
      color: Colors.greenAccent,
      child: LayoutBuilder(
        builder: (BuildContext context1, BoxConstraints constraints1) {
          return Row(
            children: [
              ButtonArr(),
            ],
          );
        },
      ),
    );
  }
}

class ButtonArr extends StatelessWidget {
  const ButtonArr({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints1) {
        return Row(
          children: [
            ElevatedButton(
              onPressed: () {}, 
              child: Text("Test"),
              style: ButtonStyle(
                shape: ElevatedButton.styleFrom(
                  shape: BeveledRectangleBorder(),
                )
              ),
            )
          ],
        );
      }
    );
  }
}