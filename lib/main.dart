import 'package:flutter/material.dart';
import 'package:flutter_test_1/customWidgets/gradient_container.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        body: GradientContainer(
          Colors.deepPurple,
          Colors.blueAccent,
        ),
      ),
    );
  }
}
