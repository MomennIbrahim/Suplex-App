import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:suplex/core/utlis/custom_size.dart';
import 'package:suplex/core/utlis/styles.dart';

class SettingViews extends StatelessWidget {
  const SettingViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.w),
        child: Column(
          children: [
            gapH(MediaQuery.sizeOf(context).height * 0.075),
            Row(
              children: [
                SvgPicture.asset("assets/images/arrow-back.svg"),
                Expanded(
                    child: Text(
                  "Setting",
                  style: Styles.style19,
                  textAlign: TextAlign.center,
                )),
              ],
            ),
            gapH(20.h),
            customContainerSetting(text: "Account"),
            gapH(20.h),
            customContainerSetting(text: "Privacy & Securety"),
            gapH(20.h),
            customContainerSetting(text: "Share Profile"),
          ],
        ),
      ),
    );
  }

  Widget customContainerSetting({required String text}) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: double.maxFinite,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                spreadRadius: 2,
                offset: const Offset(0, 2),
                blurRadius: 7,
                color: Colors.grey[400]!),
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: Styles.style17W600,
          ),
          const Icon(Icons.keyboard_arrow_right)
        ],
      ),
    );
  }
}
