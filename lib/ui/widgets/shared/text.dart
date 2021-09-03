import 'package:flutter/material.dart';

class TextGlobal extends StatelessWidget {
  final String value;
  final double fontSize;
  final FontWeight fontWeight;
  final Color fontColor;
  final String fontFamily;
  final int? maxLines;
  
  const TextGlobal({
    Key? key,
    required this.value,
    required this.fontSize,
    required this.fontFamily,
    this.fontWeight = FontWeight.normal,
    this.maxLines,
    required this.fontColor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      this.value,
      maxLines: this.maxLines,
      style: TextStyle(
        color: this.fontColor,
        fontSize: this.fontSize,
        fontWeight: this.fontWeight,
        fontFamily: this.fontFamily
      ),
    );
  }
}
