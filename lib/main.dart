import 'dart:io';

import 'package:flutter/material.dart';
import 'package:sample_calendar/application/app.dart';
import 'package:window_size/window_size.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    setWindowTitle("Sample Title");
    setWindowMaxSize(const Size(1920, 1080));
    setWindowMinSize(const Size(950, 600));
  }

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
