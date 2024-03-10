import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suplex/core/constance.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.buttonColor,
    this.radius,
    this.width,
    this.height,
    this.paddingHorizontal = 16.0, this.style,
  });

  final String text;
  final Function onPressed;
  final Color? buttonColor;
  final double? radius;
  final double? width;
  final double? height;
  final double paddingHorizontal;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: paddingHorizontal),
      child: SizedBox(
        width: width?? 108.w,
        height: height?? 42.h,
        child: MaterialButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius??7.r)),
          onPressed: () {
            onPressed();
          },
          color: buttonColor?? Constance.kPrimaryColor,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: style?? TextStyle(
                color: Colors.white,
                fontSize: 16.sp,
                fontFamily: "Syne",
              ),
            ),
          ),
        ),
      ),
    );
  }
}
