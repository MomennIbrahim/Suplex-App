import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:suplex/core/utlis/custom_navigator.dart';
import 'package:suplex/core/utlis/custom_size.dart';
import 'package:suplex/core/utlis/styles.dart';
import 'package:suplex/features/home/presentation/views/celebrity_view.dart';
import 'package:suplex/features/profile/presentation/views/switch_account_view.dart';
import '../../../../core/constance.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            gapH(MediaQuery.sizeOf(context).height * .075),
            GestureDetector(
              onTap: () {
                push(context: context, widget: const SwitchAccountView());
              },
              child: Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: 70.w,
                  height: 29.h,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 7,
                        color: Colors.black26,
                        offset: Offset(0, 3),
                        spreadRadius: 3,
                      ),
                    ],
                    color: Constance.kPrimaryColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.r),
                      bottomLeft: Radius.circular(15.r),
                    ),
                  ),
                  child: FittedBox(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset("assets/images/friends.svg"),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0.w),
              child: Text(
                "The Contestans",
                style: Styles.style16W600,
              ),
            ),
            AspectRatio(
              aspectRatio: 16/5,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                itemBuilder: (context, index) => Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      radius: 40.r,
                      backgroundColor: Colors.red,
                    ),
                    CircleAvatar(
                      radius: 37.r,
                      backgroundColor: Colors.black,
                      backgroundImage: const NetworkImage(
                          "https://images.unsplash.com/photo-1538991383142-36c4edeaffde?q=80&w=1471&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                    ),
                  ],
                ),
                separatorBuilder: (context, index) => gapW(10.w),
                itemCount: 5,
              ),
            ),
            GestureDetector(
              onTap: (){
                push(context: context, widget: const CelebrityView());
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                child: AspectRatio(
                  aspectRatio: 5 / 1.4,
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7.r),
                            color: Colors.red,
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(""
                                    "https://images.unsplash.com/photo-1490730141103-6cac27aaab94?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"))),
                        width: double.maxFinite,
                      ),
                      Center(
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                "Celebirty Challenge Live Stream",
                                style: Styles.styleWhite17,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            gapH(20.h),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => AspectRatio(
                aspectRatio: 16 / 17,
                child: Container(
                  width: double.maxFinite,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://techcrunch.com/wp-content/uploads/2022/06/reels-templates.png"))),
                ),
              ),
              separatorBuilder: (context, index) => gapH(10.h),
              itemCount: 5,
            ),
          ],
        ),
      ),
    );
  }
}
