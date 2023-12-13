import 'package:flutter/material.dart';

class QtyWidget extends StatelessWidget {
  final double width;
  final double height;

  const QtyWidget({super.key, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    // TODO: this textbox shoul donly INPUT numbers
    return Row(
      children: [
        Container(
          height: height,
          width: width / 2,
          color: Colors.amberAccent,
          child: const Text("Quantity"),
        ),
        Container(
          height: height,
          width: width / 2,
          color: Colors.amberAccent,
          child: const TextField(),
        ),
      ],
    );
  }
}
