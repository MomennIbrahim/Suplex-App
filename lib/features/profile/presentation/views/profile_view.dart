import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:suplex/core/constance.dart';
import 'package:suplex/core/utlis/custom_navigator.dart';
import 'package:suplex/core/utlis/custom_size.dart';
import 'package:suplex/core/utlis/styles.dart';
import 'package:suplex/features/setting_&_privacy/presentation/views/setting_views.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "https://lionsgate.brightspotcdn.com/1d/90/8fc75de5411e985f3a2def98358d/johnwick4-section-promo-double-home-03.jpg",
      "https://www.theessential.agency/hubfs/6%20reasons%20why%20Google%20loves%20bloggers-1.jpg",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1f/Dwayne_Johnson_2014_%28cropped%29.jpg/800px-Dwayne_Johnson_2014_%28cropped%29.jpg",
      "https://hips.hearstapps.com/hmg-prod/images/tom-cruise-vanessa-kirby-mission-impossible-dead-reckoning-64a6add681cef.jpeg?crop=1xw:0.8441807044410413xh;center,top",
      "https://buildawellnessblog.com/wp-content/uploads/2020/07/Pros-and-Cons-of-TikTok-Pin.png",
      "https://www.theessential.agency/hubfs/6%20reasons%20why%20Google%20loves%20bloggers-1.jpg",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1f/Dwayne_Johnson_2014_%28cropped%29.jpg/800px-Dwayne_Johnson_2014_%28cropped%29.jpg",
      "https://hips.hearstapps.com/hmg-prod/images/tom-cruise-vanessa-kirby-mission-impossible-dead-reckoning-64a6add681cef.jpeg?crop=1xw:0.8441807044410413xh;center,top",
      "https://lionsgate.brightspotcdn.com/1d/90/8fc75de5411e985f3a2def98358d/johnwick4-section-promo-double-home-03.jpg",
    ];
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            gapH(MediaQuery.sizeOf(context).height * 0.1),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 60.r,
                  backgroundImage: const NetworkImage(
                      "https://a.storyblok.com/f/191576/1200x800/215e59568f/round_profil_picture_after_.webp"),
                ),
                gapW(10.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap:(){
                          push(context: context, widget: const SettingViews());
                        },
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
                          child: Icon(
                            Icons.settings,
                            color: Colors.white,
                            size: 25.r,
                          ),
                        ),
                      ),
                      gapH(25.h),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                              child: customContainer(
                                  text: "Share Profile", icon: Icons.share)),
                          gapW(5.w),
                          Expanded(
                              child: customContainer(
                                  text: "Edit", icon: Icons.edit)),
                          gapW(5.w),
                          Expanded(
                              child: SvgPicture.asset(
                            "assets/images/person_add.svg",
                            width: 20.w,
                            height: 30.h,
                          )),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0.w),
              child: Text(
                "Profile Name",
                style: Styles.style19,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0.w),
              child: Text(
                "Morem ipsum dolor sit ",
                style: Styles.style12,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                infoRow(text: "12K", text2: "Following"),
                infoRow(text: "100K", text2: "Followers"),
                infoRow(text: "2M", text2: "Likes"),
              ],
            ),
            gapH(20.h),
            TabBar(
              tabs: [
                Tab(
                  child: Image.asset(
                    "assets/images/categ.png",
                    color: Colors.black,
                  ),
                ),
                Tab(
                  child: SvgPicture.asset(
                    "assets/images/lock.svg",
                    color: Colors.black,
                  ),
                ),
                Tab(
                  child: SvgPicture.asset(
                    "assets/images/save.svg",
                    color: Colors.black,
                  ),
                ),
                Tab(
                  child: SvgPicture.asset(
                    "assets/images/arrow.svg",
                    color: Colors.black,
                  ),
                ),
                Tab(
                  child: SvgPicture.asset(
                    "assets/images/heart.svg",
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: 4,
                              mainAxisSpacing: 5),
                      itemCount: images.length,
                      itemBuilder: (context, index) => Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                           Image(
                            fit: BoxFit.cover,
                                width: double.maxFinite,
                                height: double.infinity,
                                image: NetworkImage(
                                    images[index]),
                              ),
                          Row(
                            children: [
                              const Icon(Icons.play_arrow_outlined,color: Colors.white,),
                              Text("12K",style: Styles.styleWhite17,)
                            ],
                          )
                        ],
                      )),
                  const Center(child: Text('Tab 2 Content')),
                  const Center(child: Text('Tab 3 Content')),
                  const Center(child: Text('Tab 4 Content')),
                  const Center(child: Text('Tab 5 Content')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget customContainer({required String text, required IconData icon}) {
    return AspectRatio(
      aspectRatio: 2.2,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(7.r),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Row(
              children: [
                Text(
                  text,
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                gapW(5.w),
                Icon(
                  icon,
                  color: Colors.white,
                  size: 14.r,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget infoRow({required String text, required String text2}) {
    return Expanded(
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Column(
          children: [
            Text(
              text,
              style: Styles.style25,
            ),
            Text(
              text2,
              style: Styles.styleGrey14,
            ),
          ],
        ),
      ),
    );
  }
}
