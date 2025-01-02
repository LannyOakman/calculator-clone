import 'package:flutter/cupertino.dart' show CupertinoIcons;
import 'package:flutter/material.dart';
import 'package:ios_calculator_clone/data/calculator_layout.dart';
import 'formatted_button.dart';
import "package:function_tree/function_tree.dart";

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String _cur = "0";
  String _prev = "";

  void handleChildPress((String?, IconData?) data) {
    setState(() {
      var (String? string, IconData? icon) = data;
      if (string != null) {
        ifString(string);
        return;
      } else if (icon != null) {
        ifIcon(icon);
        return;
      }
      throw Exception("String xor IconData should be true.");
    });
  }

  void ifString(String string) {
    if (_cur == "0") {
      _cur = string;
    } else if (_cur[_cur.length - 1] == ")") {
      _cur = "$_cur×$string";
    } else {
      _cur = _cur + string;
    }
  }

  void ifIcon(IconData icon) {
    switch (icon) {

      case CupertinoIcons.delete_left:
        _cur = _cur.length == 1 ? "0" : _cur.substring(0, _cur.length - 1);
        break;

      case CupertinoIcons.plus_slash_minus:
        if (inOperatorList(_cur[_cur.length-1])) break;
        if (_cur[0] == "-") {
          _cur = _cur.substring(1, _cur.length);
        } else if (_cur[0] != "(") {
          _cur = _cur[0] == "0" ? "0" : "(-$_cur)";
        } else {
          // (-123) -> 123
          // (123) -> (-123)
          _cur = _cur[1] == "-"
              ? _cur.substring(2, _cur.length - 1)
              : "(-${_cur.substring(2, _cur.length)}";
        }
        break;

      case CupertinoIcons.percent:
        _cur = opperatorPress(_cur, "%");
        break;
      
      case CupertinoIcons.divide:
        _cur = opperatorPress(_cur, "÷");
        break;

      case CupertinoIcons.multiply:
        _cur = opperatorPress(_cur, "×");
        break;

      case CupertinoIcons.minus:
        _cur = opperatorPress(_cur, "-");
        break;

      case CupertinoIcons.plus:
        _cur = opperatorPress(_cur, "+");
        break;

      case CupertinoIcons.equal:
        if (_cur == "0" || inOperatorList(_cur[_cur.length-1])) break;
        _prev = _cur;
        final String expression = _cur.replaceAll(RegExp(r'÷'), '/').replaceAll(RegExp(r'×'), '*');
        _prev = _cur;
        _cur = expression.interpret().toString();
        if (_cur == "Infinity") _cur = "Undefined";
        if (_cur.substring(_cur.length-2, _cur.length) == ".0"){
          _cur = _cur.substring(0,_cur.length-2);
        }
        break;
    }
  }

  String opperatorPress(String string, String operator){
    if (inOperatorList(string[string.length-1])){
      return string.substring(0, string.length-1) + operator;
    }
    return string + operator;
  }

  bool inOperatorList(String char){
    return ["%", "÷", "×", "-", "+"].contains(char) ? true : false;
  }

  FormattedButton addChild(ButtonData data) {
    FormattedButton child = FormattedButton(
      color: data.color,
      string: data.string,
      icon: data.icon,
      onPressed: handleChildPress,
    );

    return child;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Column(
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
                  _prev.toString(),
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
                  _cur.toString(),
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
            height: MediaQuery.of(context).size.height * 0.655,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                for (var items in CalculatorLayout.calculator_layout)
                  Column(
                    children: <FormattedButton>[
                      for (var item in items) addChild(item),
                    ],
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
