import 'package:flutter/material.dart';
import 'package:ios_calculator_clone/widgets/calculator.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(
    BuildContext context,
  ) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Calculator()
      ),
    );
  }
}