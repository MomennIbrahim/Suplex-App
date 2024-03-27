import 'package:flutter/material.dart';

import '../utlis/styles.dart';
import 'back_icon.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const BackIcon(),
        Expanded(
            child: Text(
          title,
          style: Styles.style19,
          textAlign: TextAlign.center,
        )),
      ],
    );
  }
}
