import 'package:flutter/material.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Row(
            children: [
              Text("Sample"),
              Container(
                width: 150,
                height: 50,
                child: TextField()
              ),
            ],
          ),
          Row(
            children: [
              Text("Another Sample"),
              Container(
                width: 150,
                height: 50,
                child: TextField()
              ),
            ],
          ),
        ],
      ),
    );
  }
}
