import 'package:flutter/material.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LayoutBuilder(
        builder: (),
      ), 
    );
  }
}

class TaskNameWidget extends StatelessWidget {
  final double height;

  const TaskNameWidget({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      color: Colors.redAccent
    );
  }
}
