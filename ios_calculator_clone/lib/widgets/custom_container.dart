import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CustomContainer extends StatelessWidget{

  final GestureTapCallback onTap;
  final Widget child;
  final double height;
  final double width;
  final Color color;

  CustomContainer(
    {required this.child,
     required this.height,
     required this.width,
     required this.onTap,
     required this.color});

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle),
        child: child,
        ),
    );
  }
}