import 'package:flutter/material.dart';

class FormattedButton extends StatelessWidget {
  final Color color;
  final String? string;
  final IconData? icon;
  final Function? onPressed;

  const FormattedButton({
    super.key,
    required this.color,
    this.string,
    this.icon,
    this.onPressed,
  });

  (String?, IconData?) getData(){
    return (string, icon);
  }

  @override
  Widget build(BuildContext context) {
    Widget childWidget;

    if (string != null) {
      childWidget = Text(
        string!,
        style: TextStyle(
          fontSize: 50,
          color: Colors.white,
          fontFamily: "SanFrancisco",
          fontWeight: FontWeight.w300,
        ),
      );
    } else {
      childWidget = Icon(
        icon!,
        color: Colors.white,
        size: 40,
      );
    }

    return Container(
      width: 95,
      height: 95,
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: ElevatedButton(
        onPressed: () => {
          onPressed!(getData())
        },
        style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
            backgroundColor: color,
            foregroundColor: Colors.white),
        child: Center(
          child: childWidget,
        ),
      ),
    );
  }
}

