import 'package:flutter/material.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          CustomTitleBar(height: 75),
          CalendarContent(),
        ],
      ),
    );
  }
}

class CustomTitleBar extends StatelessWidget {
  final double height;

  const CustomTitleBar({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      color: Colors.redAccent,
      child: Row(
        children: [],
      ),
    );
  }
}

class CalendarContent extends StatelessWidget {
  const CalendarContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints1) {
          return Column(
            children: [
              DayIndicator(
                height: 50,
              ),
              Expanded(
                child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints2) {
                    return Column(
                      children: [
                        for (int i = 0; i < 6; ++i)
                          if (i % 2 == 0)
                            WeekContent(
                              height: constraints2.maxHeight / 6.0, 
                              color: Colors.orangeAccent, 
                              dayWidth: constraints2.maxWidth / 7.0
                            )
                          else
                            WeekContent(
                              height: constraints2.maxHeight / 6.0, 
                              color: Colors.blueAccent, 
                              dayWidth: constraints2.maxWidth / 7.0
                            )
                      ],
                    );
                  }
                )
              ),
            ],
          );
        }
      ),
    );
  }
}

class DayIndicator extends StatelessWidget {
  final double height;

  const DayIndicator({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      color: Colors.redAccent,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints1) {
          return Row(
            children: [
              for (int i = 0; i < 7; ++i)
                DayIndicatorPartition(
                  text: "hah",
                  width: constraints1.maxWidth / 7.0
                )
            ],
          );
        }
      )
    );
  }
}

class DayIndicatorPartition extends StatelessWidget {
  final double width;
  final String text;

  const DayIndicatorPartition({super.key, required this.width, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: Center(
        child: Text(text),
      ),
    );
  }
}

class WeekContent extends StatelessWidget {
  final double height;
  final double dayWidth;
  final Color color;

  const WeekContent(
      {super.key,
      required this.height,
      required this.color,
      required this.dayWidth});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          for (int i = 0; i < 7; ++i)
            DayContent(
              width: dayWidth,
            )
        ],
      ),
      height: height,
      color: color,
    );
  }
}

class DayContent extends StatelessWidget {
  final double width;

  const DayContent({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5
        )
      ),
    );
  }
}
