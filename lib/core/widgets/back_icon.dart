import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BackIcon extends StatelessWidget {
  const BackIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
        onTap: (){
          Navigator.pop(context);
        },
        child: SvgPicture.asset("assets/images/arrow-back.svg"));
  }
}
