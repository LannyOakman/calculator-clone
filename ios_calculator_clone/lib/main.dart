import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ios_calculator_clone/data/calculator_layout.dart';
import 'package:ios_calculator_clone/widgets/formatted_button.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.95,
          margin: EdgeInsets.only(top: 390),
          
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
              for(var items in CalculatorLayout.calculator_layout) Column(
                  children: <FormattedButton>[
                    for(var item in items) FormattedButton(color: item.color, icon: item.icon, string: item.string,)
                  ],
                ),
            ],
          ),
      )),
    ));
  }
}
