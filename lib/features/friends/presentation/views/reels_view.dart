import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

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
    "https://images.pexels.com/photos/19567574/pexels-photo-19567574/free-photo-of-man-and-woman-near-pond-together.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
    "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
    "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
    "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
  ];

  List<String> images = [
    "https://images.pexels.com/photos/19567574/pexels-photo-19567574/free-photo-of-man-and-woman-near-pond-together.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/18042975/pexels-photo-18042975/free-photo-of-bride-and-groom-standing-close-to-each-other.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  ];

  bool isFollowing = true;

  PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    List<Widget> comments = [
      ListTile(
        title: Text(
          'amazing! sa saj kasj dkjsakd jskaj kasjd kjsdk jsadkj kasjdkj sakdj iwjd snmckjsadc asi',
          style: Styles.styleWhite12,
        ),
        leading: const CircleAvatar(
          backgroundImage: NetworkImage(
              "https://sb.kaleidousercontent.com/67418/1920x1281/0e9f02a048/christian-buehner-ditylc26zvi-unsplash.jpg"),
        ),
      ),
      ListTile(
        title: Text(
          'Nice Video',
          style: Styles.styleWhite12,
        ),
        leading: const CircleAvatar(
          backgroundImage: NetworkImage(
              "https://sb.kaleidousercontent.com/67418/1920x1281/0e9f02a048/christian-buehner-ditylc26zvi-unsplash.jpg"),
        ),
      ),
      ListTile(
        title: Text(
          'Wow! What is the name of this song?',
          style: Styles.styleWhite12,
        ),
        leading: const CircleAvatar(
          backgroundImage: NetworkImage(
              "https://sb.kaleidousercontent.com/67418/1920x1281/0e9f02a048/christian-buehner-ditylc26zvi-unsplash.jpg"),
        ),
      ),
      ListTile(
        title: Text(
          'Wow! What is the name of this song?',
          style: Styles.styleWhite12,
        ),
        leading: const CircleAvatar(
          backgroundImage: NetworkImage(
              "https://sb.kaleidousercontent.com/67418/1920x1281/0e9f02a048/christian-buehner-ditylc26zvi-unsplash.jpg"),
        ),
      ),
      ListTile(
        title: Text(
          'Wow! What is the name of this song?',
          style: Styles.styleWhite12,
        ),
        leading: const CircleAvatar(
          backgroundImage: NetworkImage(
              "https://sb.kaleidousercontent.com/67418/1920x1281/0e9f02a048/christian-buehner-ditylc26zvi-unsplash.jpg"),
        ),
      ),
      ListTile(
        title: Text(
          'Wow! What is the name of this song?',
          style: Styles.styleWhite12,
        ),
        leading: const CircleAvatar(
          backgroundImage: NetworkImage(
              "https://sb.kaleidousercontent.com/67418/1920x1281/0e9f02a048/christian-buehner-ditylc26zvi-unsplash.jpg"),
        ),
      ),
      ListTile(
        title: Text(
          'Wow! What is the name of this song?',
          style: Styles.styleWhite12,
        ),
        leading: const CircleAvatar(
          backgroundImage: NetworkImage(
              "https://sb.kaleidousercontent.com/67418/1920x1281/0e9f02a048/christian-buehner-ditylc26zvi-unsplash.jpg"),
        ),
      ),
      ListTile(
        title: Text(
          'Wow! What is the name of this song?',
          style: Styles.styleWhite12,
        ),
        leading: const CircleAvatar(
          backgroundImage: NetworkImage(
              "https://sb.kaleidousercontent.com/67418/1920x1281/0e9f02a048/christian-buehner-ditylc26zvi-unsplash.jpg"),
        ),
      ),
      ListTile(
        title: Text(
          'Wow! What is the name of this song?',
          style: Styles.styleWhite12,
        ),
        leading: const CircleAvatar(
          backgroundImage: NetworkImage(
              "https://sb.kaleidousercontent.com/67418/1920x1281/0e9f02a048/christian-buehner-ditylc26zvi-unsplash.jpg"),
        ),
      ),
      ListTile(
        title: Text(
          'Wow! What is the name of this song?',
          style: Styles.styleWhite12,
        ),
        leading: const CircleAvatar(
          backgroundImage: NetworkImage(
              "https://sb.kaleidousercontent.com/67418/1920x1281/0e9f02a048/christian-buehner-ditylc26zvi-unsplash.jpg"),
        ),
      ),
      ListTile(
        title: Text(
          'Wow! What is the name of this song?',
          style: Styles.styleWhite12,
        ),
        leading: const CircleAvatar(
          backgroundImage: NetworkImage(
              "https://sb.kaleidousercontent.com/67418/1920x1281/0e9f02a048/christian-buehner-ditylc26zvi-unsplash.jpg"),
        ),
      ),
      ListTile(
        title: Text(
          'amazing! sa saj kasj dkjsakd jskaj kasjd kjsdk jsadkj kasjdkj sakdj iwjd snmckjsadc asi',
          style: Styles.styleWhite12,
        ),
        leading: const CircleAvatar(
          backgroundImage: NetworkImage(
              "https://sb.kaleidousercontent.com/67418/1920x1281/0e9f02a048/christian-buehner-ditylc26zvi-unsplash.jpg"),
        ),
      ),
    ];

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
                        Text("Friends", style: Styles.style15),
                        Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 35.r,
                        )
                      ],
                    ),
                    gapH(MediaQuery.sizeOf(context).height * .2),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                        child: Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              radius: 20.r,
                              backgroundImage: const NetworkImage(
                                  "https://a.storyblok.com/f/191576/1200x800/215e59568f/round_profil_picture_after_.webp"),
                            ),
                            CircleAvatar(
                              radius: 8.r,
                              child: const Icon(
                                Icons.add,
                                size: 15,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    gapH(10),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                        child: SvgPicture.asset(
                          "assets/images/forword.svg",
                          height: 32.h,
                        ),
                      ),
                    ),
                    gapH(10),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                        child: Icon(
                          Icons.favorite_outlined,
                          color: Colors.white,
                          size: 38.r,
                        ),
                      ),
                    ),
                    gapH(10),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                        child: SvgPicture.asset(
                          "assets/images/comment.svg",
                          height: 35.h,
                        ),
                      ),
                    ),
                    const Spacer(),
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
                          child: Text(
                            "adsas dksajd kasjd as dasdkl jasd aklsjd aklsjd dasdjasjdjsahdjashdjashdjahsdj asdas asdas",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: Styles.style10,
                          ),
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
