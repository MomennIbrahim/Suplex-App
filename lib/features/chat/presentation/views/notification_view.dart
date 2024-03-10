import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:suplex/core/utlis/custom_size.dart';
import 'package:suplex/core/utlis/styles.dart';
import 'package:suplex/core/widgets/custom_button.dart';

import '../../../../core/constance.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          gapH(MediaQuery
              .sizeOf(context)
              .height * .075),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset("assets/images/arrow-back.svg"),
                Text(
                  "Notification",
                  style: Styles.style19,
                ),
                const Icon(Icons.search),
              ],
            ),
          ),
          gapH(25),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.w),
            child: AspectRatio(
              aspectRatio: 3,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Column(
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          clipBehavior: Clip.none,
                          children: [
                            CircleAvatar(
                              radius: 40.r,
                              backgroundImage: const NetworkImage(
                                  "https://a.storyblok.com/f/191576/1200x800/faa88c639f/round_profil_picture_before_.webp"),
                            ),
                            Positioned(
                              bottom: -1,
                              right: -1,
                              child: CircleAvatar(
                                radius: 11.r,
                                backgroundColor: Colors.white,
                              ),
                            ),
                            CircleAvatar(
                              radius: 10.r,
                              backgroundColor: Constance.kPrimaryColor,
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        gapH(2),
                        Text(
                          "Create",
                          style: Styles.style12,
                        ),
                      ],
                    );
                  } else if (index == 1) {
                    return Column(
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            CircleAvatar(
                              radius: 40.r,
                              backgroundColor: Colors.red,
                            ),
                            CircleAvatar(
                              radius: 38.r,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 37.r,
                              backgroundColor: Colors.black,
                              backgroundImage: const NetworkImage(
                                  "https://images.unsplash.com/photo-1538991383142-36c4edeaffde?q=80&w=1471&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                            ),
                          ],
                        ),
                        gapH(2),
                        Text(
                          "Radwa",
                          style: Styles.style12,
                        ),
                      ],
                    );
                  } else {
                    return Column(
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            CircleAvatar(
                              radius: 40.r,
                              backgroundColor: Constance.kPrimaryColor,
                            ),
                            CircleAvatar(
                              radius: 38.r,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 37.r,
                              backgroundColor: Colors.black,
                              backgroundImage: const NetworkImage(
                                  "https://images.unsplash.com/photo-1538991383142-36c4edeaffde?q=80&w=1471&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                            ),
                          ],
                        ),
                        gapH(2),
                        Text(
                          "Salma",
                          style: Styles.style12,
                        ),
                      ],
                    );
                  }
                },
                separatorBuilder: (context, index) => gapW(15.w),
                itemCount: 3,
              ),
            ),
          ),
          const Divider(),
          Padding(
            padding: EdgeInsets.only(bottom: 16.0.h, right: 16.w, left: 16.w),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 30.r,
                  backgroundImage: const NetworkImage(
                      "https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e."
                          "jpg"),
                ),
                gapW(15.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Lary",
                        style: Styles.style17W600,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                              child: Text(
                                "Like Your Video",
                                style: Styles.style11,
                              )),
                          CustomButton(
                            text: "Follow Back",
                            onPressed: () {},
                            height: 30.h,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 16.0.h, right: 16.w, left: 16.w),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 30.r,
                  backgroundImage: const NetworkImage(
                      "https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e."
                          "jpg"),
                ),
                gapW(15.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Lary",
                        style: Styles.style17W600,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                              child: Text(
                                "Like Your Video",
                                style: Styles.style11,
                              )),
                          CustomButton(
                            text: "Follow Back",
                            onPressed: () {},
                            height: 30.h,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "View all",
                style: Styles.styleGrey15,
              ),
              const Icon(
                Icons.keyboard_arrow_down,
                color: Colors.grey,
              ),
            ],
          ),
          gapH(20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.w),
            child: Text("Suggested Account", style: Styles.style11,),
          ),
          gapH(10.h),
          Expanded(
            child: ListView.separated(itemBuilder: (context, index) =>Padding(
                padding: EdgeInsets.only(bottom: 16.0.h, right: 16.w, left: 16.w),
                child: Row(
                children: [
                    CircleAvatar(
                      radius: 30.r,
                      backgroundImage: const NetworkImage(
                          "https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e."
                          "jpg"),
                    ),
                    gapW(15.w),
                Expanded(
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                          Text(
                            "Lary",
                            style: Styles.style17W600,
                          ),
                          Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Expanded(
                child: Text(
                "Like Your Video",
                style: Styles.style11,
                )),
                CustomButton(
                width: 90.w,
                text: "Follow Back",
                onPressed: () {},
                height: 30.h,
                ),
                const Icon(Icons.cancel_outlined),
                ],
                ),
                ],
                ),
                ),
                ],
                ),
                ),
              separatorBuilder: (context, index) => gapH(10),
              itemCount: 5,),
          )

        ],
      ),
    );
  }
}
