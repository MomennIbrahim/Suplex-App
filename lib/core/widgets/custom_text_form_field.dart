import 'package:flutter/material.dart';
import 'package:suplex/core/utlis/styles.dart';

import 'out_line_input_border.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.controller,
    this.obscureText,
    required this.keyBoardType,
    this.suffix,
    this.labelText,
    required this.validatorText,
    this.onFieldSubmitted,
    this.hasOnSubmitted = false,
    this.fillColor = const Color(0xffF6F6F6),
    this.labelColor = Colors.grey,
    this.style,
    this.hintText,
    this.radius,
  });

  final TextEditingController controller;
  final TextInputType keyBoardType;
  final String? labelText;
  final Widget? suffix;
  final Function? onFieldSubmitted;
  final bool hasOnSubmitted;
  final bool? obscureText;
  final String validatorText;
  final Color fillColor;
  final Color labelColor;
  final TextStyle? style;
  final String? hintText;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        obscureText: obscureText ?? false,
        controller: controller,
        style: style ?? Styles.styleBlack15,
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
          labelText: labelText,
          suffixIcon: suffix,
          focusedBorder: outLineInputBorder(radius ?? 6.0),
          hintText: hintText,
          labelStyle: TextStyle(color: labelColor),
          fillColor: fillColor,
          filled: true,
          enabledBorder: outLineInputBorder(radius ?? 6.0),
        ));
  }
}
