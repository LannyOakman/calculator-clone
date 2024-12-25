import 'package:flutter/material.dart';
import 'package:ios_calculator_clone/widgets/custom_button.dart';
import 'package:ios_calculator_clone/widgets/custom_column.dart';
import 'package:ios_calculator_clone/widgets/custom_container.dart';
import 'dart:math';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: CustomContainer(
            color: Color(0xfff78f07),
            height: 100,
            width: 100,
            child: Center(
              child: Text(
                "÷",
                style: TextStyle(fontSize: 50, color: Colors.white, fontFamily: "SanFrancisco", fontWeight: FontWeight.w200),
              ),
            ),
            onTap: () => {print("helloworld")},
          )
        ),
      ),
    );
  }
}
