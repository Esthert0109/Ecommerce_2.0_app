import 'package:flutter/material.dart';

import '../../../Constants/colorConstants.dart';
import '../../../Constants/textConstants.dart';

class PrimaryButtonComponent extends StatefulWidget {
  final Color buttonColor;
  final Color buttonPressedColor;
  final double height;
  final double width;
  final String buttonText;
  final TextStyle buttonTextStyle;
  final Function() onPressed;

  const PrimaryButtonComponent(
      {super.key,
      required this.buttonColor,
      required this.buttonPressedColor,
      required this.height,
      required this.width,
      required this.buttonText,
      required this.buttonTextStyle,
      required this.onPressed});

  @override
  State<PrimaryButtonComponent> createState() => _PrimaryButtonComponentState();
}

class _PrimaryButtonComponentState extends State<PrimaryButtonComponent> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: widget.buttonColor,
          foregroundColor: widget.buttonPressedColor,
          elevation: 0.0,
          shadowColor: Colors.transparent,
          fixedSize: Size(widget.width, widget.height),
          alignment: Alignment.center,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(39))),
      onPressed: widget.onPressed,
      child: Text(
        widget.buttonText,
        style: tSubmitButtonText,
      ),
    );
  }
}
