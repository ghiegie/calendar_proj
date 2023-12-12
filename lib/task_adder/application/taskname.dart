import 'package:flutter/material.dart';

class TaskName extends StatelessWidget {
  final double height;

  const TaskName({super.key, required this.height});

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
              child: Text("Task:"),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            color: Colors.greenAccent,
            height: height,
            width: constraint.maxWidth * 0.6,
            child: const Center(
              child: TextField(),
            ),
          ),
        ],
      );
    });
  }
}