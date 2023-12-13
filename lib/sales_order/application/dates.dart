import 'package:flutter/material.dart';

class DatesWidget extends StatelessWidget {
  final double width;
  final double height;

  const DatesWidget({super.key, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DateLine(width: width, height: height / 3.0, label: "Prod"),
        DateLine(width: width, height: height / 3.0, label: "Del"),
        DateLine(width: width, height: height / 3.0, label: "Sales Req"),
      ],
    );
  }
}

// TODO: This widget should use date time picker
class DateLine extends StatelessWidget {
  final double width;
  final double height;
  final String label;

  const DateLine(
      {super.key,
      required this.width,
      required this.height,
      required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: width / 2,
          height: height,
          color: Colors.deepPurpleAccent,
          child: Text(label),
        ),
        Container(
          width: width / 2,
          height: height,
          color: Colors.deepPurpleAccent,
          child: Placeholder(),
        ),
      ],
    );
  }
}
