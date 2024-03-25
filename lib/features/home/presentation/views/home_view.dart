import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:suplex/core/utlis/custom_navigator.dart';
import 'package:suplex/core/utlis/custom_size.dart';
import 'package:suplex/core/utlis/styles.dart';
import 'package:suplex/features/home/presentation/views/celebrity_view.dart';
import 'package:suplex/features/home/presentation/views/live_view.dart';
import 'package:suplex/features/profile/presentation/views/switch_account_view.dart';

import '../../../../core/constance.dart';
import '../../../../core/widgets/custom_text_form_field.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3WEmfJCME77ZGymWrlJkXRv5bWg9QQmQEzw&usqp=CAU",
      "https://sb.kaleidousercontent.com/67418/1920x1281/0e9f02a048/christian-buehner-ditylc26zvi-unsplash.jpg",
      "https://sb.kaleidousercontent.com/67418/1920x1282/7978bca0ba/christina-wocintechchat-com-50tkcap8m3a-unsplash.jpg",
    ];
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
            gapH(15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: images
                  .map((e) => Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4.0.w),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CircleAvatar(
                              radius: 46.5.r,
                              backgroundColor: Colors.black,
                            ),
                            CircleAvatar(
                              radius: 46.r,
                              backgroundColor: Colors.red,
                            ),
                            CircleAvatar(
                              radius: 45.r,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 43.r,
                              backgroundColor: Colors.black,
                              backgroundImage: NetworkImage(e),
                            ),
                          ],
                        ),
                      ))
                  .toList(),
            ),
            gapH(15),
            GestureDetector(
              onTap: () {
                push(context: context, widget: const CelebrityView());
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                child: AspectRatio(
                  aspectRatio: 5 / 1.4,
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 16.w, vertical: 8.h),
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
                ),
              ),
            ),
            gapH(20.h),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  push(
                      context: context,
                      widget: const LiveView(),
                      withNav: false);
                },
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    AspectRatio(
                      aspectRatio: 16 / 17,
                      child: Container(
                        width: double.maxFinite,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    "https://observer.com/wp-content/uploads/sites/2/2022/10/Sara-Echeagaray-Photo-by-Krissy-Saleh-1.jpg?quality=80&w=635&h=518"))),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 12.0.w, vertical: 8.h),
                      child: Row(
                        children: [
                          Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30.r),
                              child: SizedBox(
                                height: 45.h,
                                child: CustomTextFormField(
                                  controller: TextEditingController(),
                                  keyBoardType: TextInputType.text,
                                  hintText: "Add Comment",
                                  validatorText: "",
                                  fillColor: Colors.black12,
                                ),
                              ),
                            ),
                          ),
                          gapW(10),
                          Image.asset(
                            "assets/images/gift.png",
                            height: 25.h,
                          ),
                          gapW(5),
                          const Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              separatorBuilder: (context, index) => gapH(10.h),
              itemCount: 3,
            ),
          ],
        ),
      ),
    );
  }
}
