import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:suplex/core/utlis/custom_size.dart';
import 'package:suplex/core/utlis/styles.dart';
import 'package:suplex/features/home/presentation/views/second_win_view.dart';
import '../../../../core/constance.dart';
import '../../../../core/utlis/custom_navigator.dart';

class WinView extends StatelessWidget {
  const WinView({super.key});

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
                    push(context: context, widget: const SecondWinView());
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
                  itemCount: 8,
                  shrinkWrap: true,
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
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
                                  "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: CircleAvatar(
                            radius: 20.r,
                            backgroundColor: Colors.red.withOpacity(0.25),
                            child: Text("1",style: Styles.styleWhite17.copyWith(fontWeight: FontWeight.w800),),
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
                          "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"))),
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
                itemCount: 8,
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
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
                                "https://images.pexels.com/photos/1559486/pexels-photo-1559486.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: CircleAvatar(
                          radius: 20.r,
                          backgroundColor: Colors.white.withOpacity(0.3),
                          child: Text("1",style: Styles.styleWhite17,),
                        ),
                      ),
                    ),
              ),
            ),
            Container(
              width: 90.w,
              height: 80.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://images.pexels.com/photos/1559486/pexels-photo-1559486.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"))),
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
                itemCount: 8,
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
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
                                "https://images.pexels.com/photos/1499327/pexels-photo-1499327.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: CircleAvatar(
                          radius: 20.r,
                          backgroundColor: Colors.black.withOpacity(0.3),
                          child: Text("1",style: Styles.styleWhite17,),
                        ),
                      ),
                    ),
              ),
            ),
            Container(
              width: 90.w,
              height: 80.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://images.pexels.com/photos/1499327/pexels-photo-1499327.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"))),
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
                itemCount: 8,
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
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
                                "https://www.retratosbarcelona.com/wp-content/uploads/2022/09/Retratos-Barcelona-Linkedin-Photo-Sydney.jpg")),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: CircleAvatar(
                          radius: 20.r,
                          backgroundColor: Colors.white.withOpacity(0.2),
                          child: Text("1",style: Styles.styleWhite17,),
                        ),
                      ),
                    ),
              ),
            ),
            Container(
              width: 90.w,
              height: 80.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://www.retratosbarcelona.com/wp-content/uploads/2022/09/Retratos-Barcelona-Linkedin-Photo-Sydney.jpg"))),
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
