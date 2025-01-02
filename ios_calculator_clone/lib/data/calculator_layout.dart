import 'package:flutter/cupertino.dart' show Color, CupertinoIcons, IconData;

class ButtonData{
  final Color color;
  final String? string;
  final IconData? icon;

  ButtonData({
    required this.color,
    this.string,
    this.icon,
  });
}

//Better way to do this?
class CalculatorLayout{
  static List<List<ButtonData>> calculator_layout = [
  [
    ButtonData(string: null, icon: CupertinoIcons.delete_left, color: Color(0xFF5C5C5F)),
    ButtonData(string: '7', icon: null, color: Color(0xFF2A2A2C)),
    ButtonData(string: '4', icon: null, color: Color(0xFF2A2A2C)),
    ButtonData(string: '1', icon: null, color: Color(0xFF2A2A2C)),
    ButtonData(string: null, icon: CupertinoIcons.circle_grid_hex_fill, color: Color(0xFF2A2A2C)),
  ],
  [
    ButtonData(string: null, icon: CupertinoIcons.plus_slash_minus, color: Color(0xFF5C5C5F)),
    ButtonData(string: '8', icon: null, color: Color(0xFF2A2A2C)),
    ButtonData(string: '5', icon: null, color: Color(0xFF2A2A2C)),
    ButtonData(string: '2', icon: null, color: Color(0xFF2A2A2C)),
    ButtonData(string: '0', icon: null, color: Color(0xFF2A2A2C)),
  ],
  [
    ButtonData(string: null, icon: CupertinoIcons.percent, color: Color(0xFF5C5C5F)),
    ButtonData(string: '9', icon: null, color: Color(0xFF2A2A2C)),
    ButtonData(string: '6', icon: null, color: Color(0xFF2A2A2C)),
    ButtonData(string: '3', icon: null, color: Color(0xFF2A2A2C)),
    ButtonData(string: '.', icon: null, color: Color(0xFF2A2A2C)),
  ],
  [
    ButtonData(string: null, icon: CupertinoIcons.divide, color: Color(0xFFFF9F0A)),
    ButtonData(string: null, icon: CupertinoIcons.multiply, color: Color(0xFFFF9F0A)),
    ButtonData(string: null, icon: CupertinoIcons.minus, color: Color(0xFFFF9F0A)),
    ButtonData(string: null, icon: CupertinoIcons.plus, color: Color(0xFFFF9F0A)),
    ButtonData(string: null, icon: CupertinoIcons.equal, color: Color(0xFFFF9F0A)),
  ],
];
}