import 'package:flutter/material.dart';

class DateWidget extends StatelessWidget {
  final double height;

  const DateWidget({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return Row(
        children: [
          Container(
            color: Colors.redAccent,
            height: height,
            width: constraint.maxWidth * 0.2,
            child: const Center(
              child: Text("Start Date:"),
            ),
          ),
          DatePickerWidget(
            width: constraint.maxWidth * 0.6,
            height: height,
          )
        ],
      );
    });
  }
}

class DatePickerWidget extends StatelessWidget {
  final double width;
  final double height;

  const DatePickerWidget(
      {super.key, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: Colors.greenAccent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            child: Text(DateTime.now().toString()),
          ),
          Container(
            height: height,
            width: height,
            color: Colors.blueGrey,
            child: const Icon(Icons.arrow_upward_sharp)
          ), 
        ],
      ),
    );
  }
}