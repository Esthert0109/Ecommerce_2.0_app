import 'package:flutter/material.dart';

import '../../../Constants/colorConstants.dart';
import '../../../Constants/textConstants.dart';

class SubmitButtonComponent extends StatefulWidget {
  final String buttonText;
  final TextStyle buttonTextStyle;
  final Function()? onPressed;

  SubmitButtonComponent(
      {super.key,
      required this.buttonText,
      required this.buttonTextStyle,
      this.onPressed});

  @override
  State<SubmitButtonComponent> createState() => _SubmitButtonComponentState();
}

class _SubmitButtonComponentState extends State<SubmitButtonComponent> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: kSubmitButtonColor,
          foregroundColor: kSubmitButtonPressedColor,
          disabledBackgroundColor: kSubmitButtonDisableColor,
          disabledForegroundColor: kSubmitButtonPressedColor,
          textStyle: tSubmitButtonText,
          elevation: 0.0,
          shadowColor: Colors.transparent,
          alignment: Alignment.center,
          fixedSize: const Size.fromHeight(42),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
      onPressed: widget.onPressed,
      child: Text(
        widget.buttonText,
        style: widget.buttonTextStyle,
      ),
    );
  }
}
