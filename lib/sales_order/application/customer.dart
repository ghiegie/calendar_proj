import 'package:flutter/material.dart';

class CustWidget extends StatelessWidget {
  final double widgetWidth;
  final double widgetHeight;

  const CustWidget(
      {super.key, required this.widgetWidth, required this.widgetHeight});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OldNewCust(widgetWidth: widgetWidth, widgetHeight: widgetHeight * 0.2),
        CustDetails(widgetWidth: widgetWidth, widgetHeight: widgetHeight * 0.8)
      ],
    );
  }
}

class OldNewCust extends StatelessWidget {
  final double widgetWidth;
  final double widgetHeight;

  const OldNewCust(
      {super.key, required this.widgetWidth, required this.widgetHeight});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: widgetWidth / 2.0,
          height: widgetHeight,
          color: Colors.greenAccent,
          child: const OldDropdown(),
        ),
        TextButton(onPressed: () {}, child: const Text("New Customer"))
      ],
    );
  }
}

class OldDropdown extends StatelessWidget {
  const OldDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class CustDetails extends StatelessWidget {
  final double widgetWidth;
  final double widgetHeight;

  const CustDetails(
      {super.key, required this.widgetWidth, required this.widgetHeight});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widgetHeight,
      width: widgetWidth,
      child: Placeholder(),
    );
  }
}
