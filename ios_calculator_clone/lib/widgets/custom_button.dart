import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget{

  final GestureTapCallback onTap;
  final Color color;
  final IconData icon;

  CustomButton(
    {
      required this.onTap,
      required this.color,
      required this.icon,
    }
  );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: color
        ),
        child: Icon(icon),
      ),
    );
  }
}