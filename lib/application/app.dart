import 'package:flutter/material.dart';
import 'package:sample_calendar/application/appbar.dart';
import 'package:sample_calendar/application/content.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints1) {
          return Column(
            children: [
              CalendarAppBar(barHeight: constraints1.maxHeight * 0.1, barWidth: constraints1.maxWidth,),
              CalendarContent(),
            ],
          );
        },
      ),
    );
  }
}
