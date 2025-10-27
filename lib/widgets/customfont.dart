import 'package:flutter/material.dart';

class CustomFont extends StatelessWidget {
  const CustomFont(
    {super.key,
    required this.text,
    required this.fontSize,
    required this.color,
    this.fontFamily = 'Frutiger',
    this.fontWeight = FontWeight.normal,
    this.fontStyle = FontStyle.italic,
    this.textAlign = TextAlign.left,
    this.letterSpacing = 0});

  final String text;
  final double fontSize, letterSpacing;
  final Color color;
  final FontWeight fontWeight;
  final FontStyle fontStyle;
  final TextAlign textAlign;
  final String fontFamily;

  @override
  Widget build(BuildContext context){
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
          fontFamily: fontFamily,
          fontSize: fontSize,
          color: color,
          fontWeight: fontWeight,
          fontStyle: fontStyle,
          letterSpacing: letterSpacing),
    );
  }
}