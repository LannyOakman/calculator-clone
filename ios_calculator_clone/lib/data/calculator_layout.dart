import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonData{
  final Color color;
  final int? num;
  final String? string;
  final IconData? icon;

  ButtonData({
    required this.color,
    this.string,
    this.num,
    this.icon,
  });
}

//Better way to do this?
class CalculatorLayout{
  static List<List<ButtonData>> calculator_layout = [
  [
    ButtonData(num: null, string: null, icon: CupertinoIcons.delete_left, color: Color(0xFF5C5C5F)),
    ButtonData(num: 7, string: null, icon: null, color: Color(0xFF2A2A2C)),
    ButtonData(num: 4, string: null, icon: null, color: Color(0xFF2A2A2C)),
    ButtonData(num: 1, string: null, icon: null, color: Color(0xFF2A2A2C)),
    ButtonData(num: null, string: null, icon: CupertinoIcons.circle_grid_hex_fill, color: Color(0xFF2A2A2C)),
  ],
  [
    ButtonData(num: null, string: null, icon: CupertinoIcons.plus_slash_minus, color: Color(0xFF5C5C5F)),
    ButtonData(num: 8, string: null, icon: null, color: Color(0xFF2A2A2C)),
    ButtonData(num: 5, string: null, icon: null, color: Color(0xFF2A2A2C)),
    ButtonData(num: 2, string: null, icon: null, color: Color(0xFF2A2A2C)),
    ButtonData(num: 0, string: null, icon: null, color: Color(0xFF2A2A2C)),
  ],
  [
    ButtonData(num: null, string: null, icon: CupertinoIcons.percent, color: Color(0xFF5C5C5F)),
    ButtonData(num: 9, string: null, icon: null, color: Color(0xFF2A2A2C)),
    ButtonData(num: 6, string: null, icon: null, color: Color(0xFF2A2A2C)),
    ButtonData(num: 3, string: null, icon: null, color: Color(0xFF2A2A2C)),
    ButtonData(num: null, string: ".", icon: null, color: Color(0xFF2A2A2C)),
  ],
  [
    ButtonData(num: null, string: null, icon: CupertinoIcons.divide, color: Color(0xFFFF9F0A)),
    ButtonData(num: null, string: null, icon: CupertinoIcons.multiply, color: Color(0xFFFF9F0A)),
    ButtonData(num: null, string: null, icon: CupertinoIcons.minus, color: Color(0xFFFF9F0A)),
    ButtonData(num: null, string: null, icon: CupertinoIcons.plus, color: Color(0xFFFF9F0A)),
    ButtonData(num: null, string: null, icon: CupertinoIcons.equal, color: Color(0xFFFF9F0A)),
  ],
];
}