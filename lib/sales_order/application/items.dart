import 'package:flutter/material.dart';

class ItemDropdownWidget extends StatelessWidget {
  final double widgetWidth;
  final double widgetHeight;

  const ItemDropdownWidget(
      {super.key, required this.widgetWidth, required this.widgetHeight});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: widgetWidth / 2.0,
          height: widgetHeight,
          color: Colors.greenAccent,
          child: Placeholder(),
        ),
        Column(
          children: [
            Text("Item Code"),
            Text("Item Name"),
          ],
        ),
      ],
    );
  }
}
