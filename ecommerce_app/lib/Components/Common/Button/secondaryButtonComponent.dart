import 'package:flutter/material.dart';

import '../../../Constants/colorConstants.dart';
import '../../../Constants/textConstants.dart';

class SecondaryButtonComponent extends StatefulWidget {
  final Color buttonColor;
  final Color buttonPressedColor;
  final double radius;
  final Color borderColor;
  final double borderWidth;
  final String buttonText;
  final TextStyle buttonTextStyle;
  final Function() onPressed;

  const SecondaryButtonComponent({
    super.key,
    required this.buttonColor,
    required this.buttonPressedColor,
    required this.radius,
    required this.borderColor,
    required this.borderWidth,
    required this.buttonText,
    required this.buttonTextStyle,
    required this.onPressed,
  });

  @override
  State<SecondaryButtonComponent> createState() =>
      _SecondaryButtonComponentState();
}

class _SecondaryButtonComponentState extends State<SecondaryButtonComponent> {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 0),
          backgroundColor: widget.buttonColor,
          foregroundColor: widget.buttonPressedColor,
          disabledBackgroundColor: kSecondaryButtonColor6,
          disabledForegroundColor: kSecondaryButtonColor3,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(widget.radius)),
          side:
              BorderSide(color: widget.borderColor, width: widget.borderWidth)),
      onPressed: widget.onPressed,
      child: Text(
        widget.buttonText,
        style: widget.buttonTextStyle,
      ),
    );
  }
}
