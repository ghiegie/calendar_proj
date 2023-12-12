import 'package:flutter/material.dart';
import 'package:flutter_guis/task_adder/application/datewidget.dart';
import 'package:flutter_guis/task_adder/application/taskname.dart';
import 'package:flutter_guis/task_adder/application/timewidget.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      var widgetHeight = constraints.maxHeight / 8.0;

      return Column(
        children: [
          TaskName(height: widgetHeight),
          DateWidget(height: widgetHeight),
          TimeWidget(widgetHeight: widgetHeight)
        ],
      );
    });
  }
}