import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suplex/core/utlis/custom_navigator.dart';
import 'package:suplex/core/utlis/custom_size.dart';
import 'package:suplex/core/utlis/styles.dart';
import 'package:suplex/features/chat/presentation/views/chat_view.dart';
import 'package:suplex/features/chat/presentation/views/notification_view.dart';
import 'package:suplex/features/chat/presentation/views/search_view.dart';
import '../../../../core/constance.dart';

class InboxView extends StatelessWidget {
  const InboxView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          gapH(MediaQuery.sizeOf(context).height * .075),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.w),
            child: Row(
              children: [
                Container(
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(100.r)),
                    child: const Icon(Icons.add)),
                const Spacer(),
                Text(
                  "Inbox",
                  style: Styles.style19,
                ),
                const Spacer(),
                GestureDetector(
                  onTap: (){
                    push(context: context, widget: const NotificationView());
                  },
                    child: const Icon(Icons.notifications_on_outlined)),
                gapW(5),
                GestureDetector(
                    onTap: (){
                      push(context: context, widget: const SearchView(),withNav: false);
                    },
                    child: const Icon(Icons.search)),
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
                        gapH(2.h),
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
                        gapH(2.h),
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
                        gapH(2.h),
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
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  push(
                    context: context,
                    widget: const ChatView(),
                    withNav: false,
                  );
                },
                child: Padding(
                  padding:
                      EdgeInsets.only(bottom: 16.0.h, right: 16.w, left: 16.w),
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
                            gapH(9),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    child: Text(
                                  "dasd asd ajshdjash dgashdgashg dhsg asidu jsdhdydd hksurhfu g",
                                  style: Styles.style11,
                                )),
                                Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(7.r),
                                          color: Colors.red),
                                      child: const Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10.0),
                                        child: Column(
                                          children: [
                                            Text(
                                              "3",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    gapH(5),
                                    const Text(
                                      "2:30",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              separatorBuilder: (context, index) => const Divider(),
              itemCount: 10,
            ),
          )
        ],
      ),
    );
  }
}
