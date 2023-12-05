import 'package:flutter/material.dart';
import 'package:sample_calendar/app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        body: Application(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}