import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suplex/core/utlis/custom_navigator.dart';
import 'package:suplex/core/utlis/custom_size.dart';
import 'package:suplex/features/friends/presentation/views/reels_view.dart';
import '../../../../core/constance.dart';
import '../../../../core/utlis/styles.dart';

class FriendsView extends StatelessWidget {
  const FriendsView({super.key});

  @override
  Widget build(BuildContext context) {
    bool isFollowing = true;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            gapH(MediaQuery.sizeOf(context).height * .1),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    // push(context: context, widget: const SecondWinView());
                  },
                  child: Container(
                    width: 80.w,
                    height: 30.h,
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
                        topRight: Radius.circular(15.r),
                        bottomRight: Radius.circular(15.r),
                      ),
                    ),
                    child: const FittedBox(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [Icon(Icons.live_tv), Text("Live")],
                        ),
                      ),
                    ),
                  ),
                ),
                isFollowing == true
                    ? Column(
                        children: [
                          Text(
                            "Following",
                            style: Styles.styleWhite19,
                          ),
                          SizedBox(
                            width: 50.w,
                            child: const Divider(
                              color: Constance.kPrimaryColor,
                              thickness: 4,
                            ),
                          ),
                        ],
                      )
                    : Text(
                        "Following",
                        style: Styles.styleWhite19,
                      ),
                Text("For You", style: Styles.style15),
                Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 35.r,
                )
              ],
            ),
            gapH(20.h),
            AspectRatio(
              aspectRatio: 3,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  if(index == 0){
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
                        Text("Create",style: Styles.style10,),
                      ],
                    );
                  }else if(index == 1){
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
                        Text("Radwa",style: Styles.style10,),
                      ],
                    );
                  }else{
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
                        Text("Salma",style: Styles.style10,),
                      ],
                    );
                  }
                } ,
                separatorBuilder: (context, index) => gapW(15.w),
                itemCount: 3,
              ),
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => GestureDetector(
                onTap: (){
                  push(context: context, widget: const ReelsView());
                },
                child: AspectRatio(
                  aspectRatio: 16 / 20,
                  child: Container(
                    width: double.maxFinite,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://techcrunch.com/wp-content/uploads/2022/06/reels-templates.png"))),
                  ),
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
