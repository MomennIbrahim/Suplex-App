import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:suplex/core/utlis/custom_navigator.dart';
import 'package:suplex/core/utlis/custom_size.dart';
import 'package:suplex/core/utlis/styles.dart';
import 'package:suplex/features/home/presentation/views/win_view.dart';

class CelebrityView extends StatelessWidget {
  const CelebrityView({super.key});

  @override
  Widget build(BuildContext context) {
    String des =
        "Rorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. Maecenas eget condimentum velit, sit amet feugiat lectus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent auctor purus luctus enim egestas, ac scelerisque ante pulvinar.";

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(right: 16.0.w, left: 16.w, bottom: 40.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            gapH(MediaQuery.sizeOf(context).height * .07),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: SvgPicture.asset(
                "assets/images/arrow-back.svg",
                color: Colors.black,
              ),
            ),
            gapH(20.h),
            Expanded(
              child: Container(
                width: double.maxFinite,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://khamsat.hsoubcdn.com/images/services/694800/f2b362b794037dcdd4b922ee389352b5.jpg"))),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.0.w, vertical: 22.h),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 12.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      color: Colors.black.withOpacity(.4),
                    ),
                    child: SingleChildScrollView(
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Column(
                            children: [
                              gapH(20.h),
                              Text(
                                "Celebrity",
                                style: Styles.style34,
                              ),
                              Text(
                                des,
                                style: Styles.style20,
                              ),
                            ],
                          ),
                          InkWell(
                              onTap: () {
                                push(context: context, widget: const WinView());
                              },
                              child: SvgPicture.asset(
                                "assets/images/go.svg",
                                width: 30.w,
                                height: 35.h,
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
