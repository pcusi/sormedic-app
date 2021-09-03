import 'package:flutter/material.dart';

class InputGlobal extends StatelessWidget {
  final bool isPassword;
  final String labelText;
  final Color labelColor;
  final double labelSize;
  final FontWeight labelWeight;
  final String hintText;
  final Color hintColor;
  final double hintSize;
  final FontWeight hintWeight;
  final Color underlineColor;
  final Color valueColor;
  final Widget? prefixIcon;
  final Function(String)? onChanged;

  const InputGlobal({
    Key? key,
    this.isPassword = false,
    this.labelWeight = FontWeight.normal,
    this.hintWeight = FontWeight.normal,
    this.prefixIcon,
    this.onChanged,
    required this.underlineColor,
    required this.labelText,
    required this.labelColor,
    required this.labelSize,
    required this.hintText,
    required this.hintColor,
    required this.hintSize,
    required this.valueColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: this.onChanged,
      obscureText: this.isPassword ? true : false,
      style: TextStyle(
        color: this.valueColor,
        fontFamily: 'Poppins',
        fontWeight: this.hintWeight,
        fontSize: this.hintSize,
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        labelText: this.labelText,
        labelStyle: TextStyle(
          color: this.labelColor,
          fontFamily: 'Poppins',
          fontSize: this.labelSize,
          fontWeight: this.labelWeight,
        ),
        hintText: this.hintText,
        hintStyle: TextStyle(
          color: this.hintColor,
          fontFamily: 'Poppins',
          fontSize: this.hintSize,
          fontWeight: this.labelWeight,
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: this.underlineColor),
        ),
        prefixIcon: this.prefixIcon, 
      ),
    );
  }
}
