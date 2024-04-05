import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../Constants/colorConstants.dart';
import '../../../Constants/textConstants.dart';

class TextFieldComponent extends StatefulWidget {
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final String? hintText;
  final FormFieldValidator<String>? validator;
  final bool isPassword;

  TextFieldComponent({
    Key? key, // Added Key? key
    required this.controller,
    this.validator,
    required this.onChanged,
    required this.isPassword,
    this.hintText,
  }) : super(key: key);

  @override
  State<TextFieldComponent> createState() => _TextFieldComponentState();
}

class _TextFieldComponentState extends State<TextFieldComponent> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.isPassword ? _obscureText : false,
      controller: widget.controller,
      onChanged: widget.onChanged,
      validator: widget.validator,
      decoration: InputDecoration(
        suffixIcon: widget.isPassword
            ? IconButton(
                icon: Icon(
                  _obscureText ? Icons.visibility_off : Icons.visibility,
                  color: kMainBlackColor,
                ),
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
              )
            : null,
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.red, width: 1.6),
        ),
        filled: true,
        fillColor: kInputFormFieldColor1,
        hintText: widget.isPassword
            ? AppLocalizations.of(context)!.passwordhint
            : widget.hintText,
        hintStyle: tInputFieldText,
        contentPadding: const EdgeInsets.all(10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
