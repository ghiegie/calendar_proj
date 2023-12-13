import 'package:flutter/material.dart';

class ColorCoatWidget extends StatelessWidget {
  final double width;
  final double height;

  const ColorCoatWidget({super.key, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: height,
            child: Text("Color Coat"),
          ),
        ),
        Container(
          width: width / 2,
          height: height,
          child: Placeholder()
        ),
      ],
    );
  }
}