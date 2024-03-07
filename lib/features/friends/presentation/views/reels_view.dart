import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:video_player/video_player.dart';

import '../../../../core/constance.dart';
import '../../../../core/utlis/custom_size.dart';
import '../../../../core/utlis/styles.dart';

class ReelsView extends StatefulWidget {
  const ReelsView({super.key});

  @override
  _ReelsViewState createState() => _ReelsViewState();
}

class _ReelsViewState extends State<ReelsView> {
  List<String> reels = [
    "https://static.videezy.com/system/resources/previews/000/044/479/original/banana.mp4",
    "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
    "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
    "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
    "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
  ];

  List<String> images = [
    "https://m.media-amazon.com/images/I/71J2WJRxyaL._AC_SL1500_.jpg",
    "https://m.media-amazon.com/images/I/61awot7RRiL._AC_SL1225_.jpg",
    "https://m.media-amazon.com/images/I/51G4FYIMVlL._AC_SL1000_.jpg",
    "https://m.media-amazon.com/images/I/71J2WJRxyaL._AC_SL1500_.jpg",
    "https://m.media-amazon.com/images/I/61awot7RRiL._AC_SL1225_.jpg",
    "https://m.media-amazon.com/images/I/51G4FYIMVlL._AC_SL1000_.jpg",
  ];

  bool isFollowing = true;

  PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          controller: pageController,
          itemBuilder: (BuildContext context, int index) {
            // VideoPlayerController  controller = VideoPlayerController.networkUrl(
            //     Uri.parse(reels[index]))..initialize().then((value) {
            //
            // });

            return GestureDetector(
              onTap: () {
                // setState(() {
                //   controller.value.isPlaying
                //       ? controller.pause()
                //       : controller.play();
                // });
              },
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(images[index]), fit: BoxFit.cover)),
                child: Column(
                  children: [
                    gapH(MediaQuery.sizeOf(context).height * .065),
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
                                padding: EdgeInsets.all(4.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [Icon(Icons.live_tv), Text("Live")],
                                ),
                              ),
                            ),
                          ),
                        ),
                        isFollowing == true
                            ? Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                    const Spacer(),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0.w),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            const CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://a.storyblok.com/f/191576/1200x800/215e59568f/round_profil_picture_after_.webp"),
                            ),
                            Positioned(
                              bottom: -2,
                              left: 5,
                              child: CircleAvatar(
                                radius: 5.r,
                                backgroundColor: Constance.kPrimaryColor,
                                child: Icon(Icons.add,size: 10.r,color: Colors.white,),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    gapH(7.h),
                     Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding:  const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Icon(Icons.favorite,color: Colors.white,size: 37.r,),
                      ),
                    ),
                    gapH(7.h),
                     Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding:  const EdgeInsets.symmetric(horizontal: 10.0),
                        child: SvgPicture.asset("assets/images/send.svg"),
                      ),
                    ),
                    gapH(7.h),
                     Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding:  const EdgeInsets.symmetric(horizontal: 10.0),
                        child: SvgPicture.asset("assets/images/comment.svg",height: 30.h,),
                      ),
                    ),
                    gapH(MediaQuery.sizeOf(context).height * 0.05),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                        child: const CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://a.storyblok.com/f/191576/1200x800/215e59568f/round_profil_picture_after_.webp"),
                        ),
                      ),
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                          child: Text(
                            "Name",
                            style: Styles.style10,
                          ),
                        )),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                          child: Expanded(
                              child: Text(
                            "adsas dksajd kasjd as dasdkl jasd aklsjd aklsjd dasdjasjdjsahdjashdjashdjahsdj asdas asdas",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: Styles.style10,
                          )),
                        )),
                    gapH(MediaQuery.sizeOf(context).height * .075)
                  ],
                ),
              ),
            );
          }),
    );
  }
}
