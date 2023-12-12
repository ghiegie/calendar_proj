import 'package:flutter/material.dart';

class TimeWidget extends StatelessWidget {
  final double widgetHeight;

  const TimeWidget({super.key, required this.widgetHeight});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return Row(
        children: [
          Container(
            width: constraint.maxWidth * 0.2,
            height: widgetHeight,
            color: Colors.redAccent,
          ),
          Container(
            width: constraint.maxWidth * 0.6,
            height: widgetHeight,
            color: Colors.greenAccent,
          ),
        ],
      );
    });
  }
}
