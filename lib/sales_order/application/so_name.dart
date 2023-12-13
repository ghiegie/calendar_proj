import 'package:flutter/material.dart';

class SONameWidget extends StatelessWidget {
  final double widgetWidth;
  final double widgetHeight;

  const SONameWidget(
      {super.key, required this.widgetWidth, required this.widgetHeight});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
          height: widgetHeight,
          width: widgetWidth * 0.3,
          color: Colors.redAccent,
          child: const Text("Sales Order Number:")),
      Container(
          height: widgetHeight,
          width: widgetWidth * 0.7,
          color: Colors.greenAccent,
          child: const TextField()),
    ]);
  }
}
