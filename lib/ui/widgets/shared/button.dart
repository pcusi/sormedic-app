import 'package:flutter/material.dart';
import 'package:sormedic/ui/widgets/shared/text.dart';

class ButtonGlobal extends StatelessWidget {
  final Color buttonColor;
  final double buttonWidth;
  final double buttonHeight;
  final String buttonValue;
  final double buttonValueSize;
  final Color buttonValueColor;
  final FontWeight buttonValueWeight;
  final VoidCallback onTap;
  final bool isBlock;
  const ButtonGlobal({
    Key? key,
    this.isBlock = false,
    this.buttonWidth = 0.0,
    this.buttonHeight = 0.0,
    this.buttonValueWeight = FontWeight.normal,
    required this.onTap,
    required this.buttonColor,
    required this.buttonValue,
    required this.buttonValueSize,
    required this.buttonValueColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        width: this.isBlock ? double.infinity : this.buttonWidth,
        height: this.buttonHeight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: this.buttonColor,
        ),
        child: Align(
          alignment: Alignment.center,
          child: TextGlobal(
            fontFamily: 'Poppins',
            value: this.buttonValue,
            fontSize: this.buttonValueSize,
            fontColor: this.buttonValueColor,
            fontWeight: this.buttonValueWeight,
          ),
        ),
      ),
    );
  }
}
