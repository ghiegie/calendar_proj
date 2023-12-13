import 'package:flutter/material.dart';

class PrdOrderWidget extends StatelessWidget {
  final double widgetWidth;
  final double widgetHeight;

  const PrdOrderWidget(
      {super.key, required this.widgetWidth, required this.widgetHeight});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            height: widgetHeight,
            width: widgetWidth * 0.3,
            color: Colors.redAccent,
            child: const Text("Production Order Number:")),
        Container(
            height: widgetHeight,
            width: widgetWidth * 0.7,
            color: Colors.greenAccent,
            child: const TextField()),
      ],
    );
  }
}
