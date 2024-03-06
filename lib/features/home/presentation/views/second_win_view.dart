import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:suplex/core/utlis/custom_size.dart';
import 'package:suplex/core/utlis/styles.dart';
import 'package:suplex/features/home/presentation/views/third_win_view.dart';
import '../../../../core/constance.dart';
import '../../../../core/utlis/custom_navigator.dart';

class SecondWinView extends StatelessWidget {
  const SecondWinView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff3e4a80),
      body: SingleChildScrollView(
        child: Column(
          children: [
            gapH(MediaQuery
                .sizeOf(context)
                .height * .075),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
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
                GestureDetector(
                  onTap: () {
                    push(context: context, widget: const ThirdWinView());
                  },
                  child: Container(
                    width: 70.w,
                    height: 29.h,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 3,
                          color: Colors.black26,
                          offset: Offset(0, 3),
                          spreadRadius: 1,
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
                        child: Text(
                          "Next",
                          style: Styles.style20,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            gapH(20.h),
            AspectRatio(
              aspectRatio: 16 / 8,
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                  itemCount: 2,
                  shrinkWrap: true,
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) =>
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://i0.wp.com/picjumbo.com/wp-content/uploads/solitary-tree-against-setting-sun-free-photo.jpg?w=600&quality=80")),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(50.0),
                          child: CircleAvatar(
                            radius: 20.r,
                            backgroundColor: Colors.red,
                            child: Text("1",style: Styles.styleWhite17,),
                          ),
                        ),
                      ),),
            ),
            Container(
              width: 90.w,
              height: 80.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://i0.wp.com/picjumbo.com/wp-content/uploads/solitary-tree-against-setting-sun-free-photo.jpg?w=600&quality=80"))),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.0.w),
                child: SvgPicture.asset(
                  "assets/images/Win.svg",
                ),
              ),
            ),
            gapH(15.h),
            AspectRatio(
              aspectRatio: 16 / 8,
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 2,
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemBuilder: (context, index) =>
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://i0.wp.com/picjumbo.com/wp-content/uploads/solitary-tree-against-setting-sun-free-photo.jpg?w=600&quality=80")),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(50.0),
                        child: CircleAvatar(
                          radius: 20.r,
                          backgroundColor: Colors.red,
                          child: Text("1",style: Styles.styleWhite17,),
                        ),
                      ),
                    ),),
            ),
            Container(
              width: 90.w,
              height: 80.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://i0.wp.com/picjumbo.com/wp-content/uploads/solitary-tree-against-setting-sun-free-photo.jpg?w=600&quality=80"))),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.0.w),
                child: SvgPicture.asset(
                  "assets/images/Win.svg",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
