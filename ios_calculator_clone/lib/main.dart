import 'package:flutter/material.dart';
import 'package:ios_calculator_clone/data/calculator_layout.dart';
import 'package:ios_calculator_clone/widgets/formatted_button.dart';

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
        body: Column(
          children: [
            Spacer(),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 40,
              child: Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: Text(
                    "123,123,123",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 90,
              child: Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: Text(
                    "123,123,123",
                    style: TextStyle(
                      fontSize: 60,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.615,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  for (var items in CalculatorLayout.calculator_layout)
                    Column(
                      children: <FormattedButton>[
                        for (var item in items)
                          FormattedButton(
                            color: item.color,
                            icon: item.icon,
                            string: item.string,
                            num: item.num,
                          )
                      ],
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
