import 'package:flutter/material.dart';

class ItemDescTxtBox extends StatelessWidget {
  final double width;
  final double height;

  const ItemDescTxtBox({super.key, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: height / 5.0,
          width: width,
          color: Colors.blueAccent,
          child: const Text("Item Description"),
        ),
        Container(
          height: height / 5.0 * 4.0,
          width: width,
          color: Colors.blueGrey,
          child: TextField(),
        )
      ],
    );
  }
}
