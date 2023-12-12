import 'package:flutter/material.dart';
import 'package:flutter_guis/calendar/application/appbar.dart';
import 'package:flutter_guis/calendar/application/content.dart';
import 'package:flutter_guis/calendar/models/date_model.dart';
import 'package:provider/provider.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints1) {
          return ChangeNotifierProvider(
            create: (context) => DateModel(),
            child: Column(
              children: [
                CalendarAppBar(barHeight: 50, barWidth: constraints1.maxWidth,),
                const CalendarContent(),
              ],
            ),
          );
        },
      ),
    );
  }
}
