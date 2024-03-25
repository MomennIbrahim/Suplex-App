import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:suplex/core/utlis/custom_size.dart';

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
            gapH(MediaQuery.sizeOf(context).height * .075),
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
                              "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"))),
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
                              "https://images.pexels.com/photos/1499327/pexels-photo-1499327.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"))),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 100.0.w),
                    child: SvgPicture.asset(
                      "assets/images/sec.svg",
                    ),
                  ),
                ),
              ),
            ),
            gapH(15.h),
            AspectRatio(
              aspectRatio: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 65.0.w),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://www.retratosbarcelona.com/wp-content/uploads/2022/09/Retratos-Barcelona-Linkedin-Photo-Sydney.jpg"))),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 85.0.w),
                    child: SvgPicture.asset(
                      "assets/images/sec.svg",
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
