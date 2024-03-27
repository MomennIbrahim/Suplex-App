import 'package:flutter/material.dart';
import 'package:suplex/core/constance.dart';
import 'package:suplex/core/utlis/styles.dart';

class CustomTextRich extends StatelessWidget {
  const CustomTextRich({super.key, required this.text1, required this.text2});

  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        style: const TextStyle(
          fontSize: 18.0,
          color: Colors.black,
        ),
        children: <TextSpan>[
          TextSpan(text: text1, style: Styles.style16),
          TextSpan(
            text: text2,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              color: Constance.kPrimaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
