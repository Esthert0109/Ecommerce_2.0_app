import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../../../Constants/colorConstants.dart';
import '../../../Constants/textConstants.dart';

class SubmitButtonComponent extends StatefulWidget {
  final String buttonText;
  final TextStyle buttonTextStyle;
  final Function()? onPressed;
  final bool isLoading;

  SubmitButtonComponent(
      {super.key,
      required this.buttonText,
      required this.buttonTextStyle,
      this.onPressed,
      required this.isLoading});

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
      onPressed: widget.isLoading? null: widget.onPressed,
      child: widget.isLoading
          ? LoadingAnimationWidget.prograssiveDots(
              color: kMainWhiteColor, size: 30)
          : Text(
              widget.buttonText,
              style: widget.buttonTextStyle,
            ),
    );
  }
}
