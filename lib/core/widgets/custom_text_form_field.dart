import 'package:flutter/material.dart';

import 'out_line_input_border.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.controller,
    this.obscureText,
    required this.keyBoardType,
    this.suffix,
    required this.labelText,
    required this.validatorText,
    this.onFieldSubmitted,
    this.hasOnSubmitted = false,
    this.fillColor = const Color(0xffF6F6F6),
    this.labelColor = Colors.grey, this.style,
  });

  final TextEditingController controller;
  final TextInputType keyBoardType;
  final String labelText;
  final Widget? suffix;
  final Function? onFieldSubmitted;
  final bool hasOnSubmitted;
  final bool? obscureText;
  final String validatorText;
  final Color fillColor;
  final Color labelColor;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        obscureText: obscureText?? false,
        controller: controller,
        style: const TextStyle(fontSize: 14,color: Colors.black26),
        keyboardType: keyBoardType,
        onFieldSubmitted: hasOnSubmitted
            ? (value) {
          onFieldSubmitted!();
        }
            : null,
        validator: (value) {
          if (value!.isEmpty) {
            return validatorText;
          }
          return null;
        },
        decoration: InputDecoration(
          suffixIcon: suffix,
          focusedBorder: outLineInputBorder(),
          label: Text(
            labelText,
          ),
          labelStyle: TextStyle(color: labelColor),
          fillColor: fillColor,
          filled: true,
          enabledBorder: outLineInputBorder(),
        ));
  }
}
