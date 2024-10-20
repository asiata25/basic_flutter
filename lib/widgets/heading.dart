import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  String text;
  FontWeight fontWeight;
  double fontSize;
  Heading(
      {super.key,
      this.text = "text",
      this.fontWeight = FontWeight.w700,
      this.fontSize = 18});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontWeight: fontWeight,
          fontSize: fontSize,
          color: Colors.grey.shade600),
    );
  }
}
