import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:suplex/core/utlis/custom_size.dart';
import 'package:suplex/core/utlis/styles.dart';
import '../../../../core/constance.dart';

class ThirdWinView extends StatelessWidget {
  const ThirdWinView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff3e4a80),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            gapH(MediaQuery
                .sizeOf(context)
                .height * .075),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                child: SvgPicture.asset(
                  "assets/images/arrow-back.svg",
                  color: Colors.white,
                ),
              ),
            ),
            gapH(20.h),
            AspectRatio(
              aspectRatio: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://i0.wp.com/picjumbo.com/wp-content/uploads/solitary-tree-against-setting-sun-free-photo.jpg?w=600&quality=80"))),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 100.0.w),
                    child: SvgPicture.asset(
                      "assets/images/top.svg",
                    ),
                  ),
                ),
              ),
            ),
            gapH(15.h),
            AspectRatio(
              aspectRatio: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0.w),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://i0.wp.com/picjumbo.com/wp-content/uploads/solitary-tree-against-setting-sun-free-photo.jpg?w=600&quality=80"))),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 100.0.w),
                    child: SvgPicture.asset(
                      "assets/images/sec.svg",
                    ),
                  ),
                ),
              ),
            ),          ],
        ),
      ),
    );
  }
}
