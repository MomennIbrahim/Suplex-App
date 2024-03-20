import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utlis/custom_size.dart';
import '../../../../core/utlis/styles.dart';
import '../../../../core/widgets/custom_text_form_field.dart';

class LiveView extends StatefulWidget {
  const LiveView({super.key});

  @override
  State<LiveView> createState() => _LiveViewState();
}

class _LiveViewState extends State<LiveView> {
  bool isImageshown = false;
  @override
  Widget build(BuildContext context) {
    List<Widget> comments = [
      ListTile(
        title: Row(
          children: [
            Text(
              "Momen Ibrahim14: ",
              style: Styles.styleGrey14.copyWith(color: Colors.green),
            ),
            Expanded(
              child: Text(
                'Nice Video',
                style: Styles.styleWhite12,
              ),
            ),
          ],
        ),
        leading: const CircleAvatar(
          backgroundImage: NetworkImage(
              "https://sb.kaleidousercontent.com/67418/1920x1281/0e9f02a048/christian-buehner-ditylc26zvi-unsplash.jpg"),
        ),
      ),
      ListTile(
        title: Row(
          children: [
            Text(
              "Momen Ibrahim14: ",
              style: Styles.styleGrey14.copyWith(color: Colors.green),
            ),
            Expanded(
              child: Text(
                'Nice Video',
                style: Styles.styleWhite12,
              ),
            ),
          ],
        ),
        leading: const CircleAvatar(
          backgroundImage: NetworkImage(
              "https://sb.kaleidousercontent.com/67418/1920x1281/0e9f02a048/christian-buehner-ditylc26zvi-unsplash.jpg"),
        ),
      ),
      ListTile(
        title: Row(
          children: [
            Text(
              "Momen Ibrahim14: ",
              style: Styles.styleGrey14.copyWith(color: Colors.green),
            ),
            Expanded(
              child: Text(
                'Nice Video',
                style: Styles.styleWhite12,
              ),
            ),
          ],
        ),
        leading: const CircleAvatar(
          backgroundImage: NetworkImage(
              "https://sb.kaleidousercontent.com/67418/1920x1281/0e9f02a048/christian-buehner-ditylc26zvi-unsplash.jpg"),
        ),
      ),
      ListTile(
        title: Row(
          children: [
            Text(
              "Momen Ibrahim14: ",
              style: Styles.styleGrey14.copyWith(color: Colors.green),
            ),
            Expanded(
              child: Text(
                'Nice Video',
                style: Styles.styleWhite12,
              ),
            ),
          ],
        ),
        leading: const CircleAvatar(
          backgroundImage: NetworkImage(
              "https://sb.kaleidousercontent.com/67418/1920x1281/0e9f02a048/christian-buehner-ditylc26zvi-unsplash.jpg"),
        ),
      ),
      ListTile(
        title: Row(
          children: [
            Text(
              "Momen Ibrahim14: ",
              style: Styles.styleGrey14.copyWith(color: Colors.green),
            ),
            Expanded(
              child: Text(
                'Nice Video',
                style: Styles.styleWhite12,
              ),
            ),
          ],
        ),
        leading: const CircleAvatar(
          backgroundImage: NetworkImage(
              "https://sb.kaleidousercontent.com/67418/1920x1281/0e9f02a048/christian-buehner-ditylc26zvi-unsplash.jpg"),
        ),
      ),
      ListTile(
        title: Row(
          children: [
            Text(
              "Momen Ibrahim14: ",
              style: Styles.styleGrey14.copyWith(color: Colors.green),
            ),
            Expanded(
              child: Text(
                'Nice Video',
                style: Styles.styleWhite12,
              ),
            ),
          ],
        ),
        leading: const CircleAvatar(
          backgroundImage: NetworkImage(
              "https://sb.kaleidousercontent.com/67418/1920x1281/0e9f02a048/christian-buehner-ditylc26zvi-unsplash.jpg"),
        ),
      ),
      ListTile(
        title: Row(
          children: [
            Text(
              "Momen Ibrahim14: ",
              style: Styles.styleGrey14.copyWith(color: Colors.green),
            ),
            Expanded(
              child: Text(
                'Nice Video',
                style: Styles.styleWhite12,
              ),
            ),
          ],
        ),
        leading: const CircleAvatar(
          backgroundImage: NetworkImage(
              "https://sb.kaleidousercontent.com/67418/1920x1281/0e9f02a048/christian-buehner-ditylc26zvi-unsplash.jpg"),
        ),
      ),
      ListTile(
        title: Row(
          children: [
            Text(
              "Momen Ibrahim14: ",
              style: Styles.styleGrey14.copyWith(color: Colors.green),
            ),
            Expanded(
              child: Text(
                'Nice Video',
                style: Styles.styleWhite12,
              ),
            ),
          ],
        ),
        leading: const CircleAvatar(
          backgroundImage: NetworkImage(
              "https://sb.kaleidousercontent.com/67418/1920x1281/0e9f02a048/christian-buehner-ditylc26zvi-unsplash.jpg"),
        ),
      ),
      ListTile(
        title: Row(
          children: [
            Text(
              "Momen Ibrahim14: ",
              style: Styles.styleGrey14.copyWith(color: Colors.green),
            ),
            Expanded(
              child: Text(
                'Nice Video',
                style: Styles.styleWhite12,
              ),
            ),
          ],
        ),
        leading: const CircleAvatar(
          backgroundImage: NetworkImage(
              "https://sb.kaleidousercontent.com/67418/1920x1281/0e9f02a048/christian-buehner-ditylc26zvi-unsplash.jpg"),
        ),
      ),
      ListTile(
        title: Row(
          children: [
            Text(
              "Momen Ibrahim14: ",
              style: Styles.styleGrey14.copyWith(color: Colors.green),
            ),
            Expanded(
              child: Text(
                'Nice Video',
                style: Styles.styleWhite12,
              ),
            ),
          ],
        ),
        leading: const CircleAvatar(
          backgroundImage: NetworkImage(
              "https://sb.kaleidousercontent.com/67418/1920x1281/0e9f02a048/christian-buehner-ditylc26zvi-unsplash.jpg"),
        ),
      ),
      ListTile(
        title: Row(
          children: [
            Text(
              "Momen Ibrahim14: ",
              style: Styles.styleGrey14.copyWith(color: Colors.green),
            ),
            Expanded(
              child: Text(
                'Nice Video',
                style: Styles.styleWhite12,
              ),
            ),
          ],
        ),
        leading: const CircleAvatar(
          backgroundImage: NetworkImage(
              "https://sb.kaleidousercontent.com/67418/1920x1281/0e9f02a048/christian-buehner-ditylc26zvi-unsplash.jpg"),
        ),
      ),
      ListTile(
        title: Row(
          children: [
            Text(
              "Momen Ibrahim14: ",
              style: Styles.styleGrey14.copyWith(color: Colors.green),
            ),
            Expanded(
              child: Text(
                'Nice Video',
                style: Styles.styleWhite12,
              ),
            ),
          ],
        ),
        leading: const CircleAvatar(
          backgroundImage: NetworkImage(
              "https://sb.kaleidousercontent.com/67418/1920x1281/0e9f02a048/christian-buehner-ditylc26zvi-unsplash.jpg"),
        ),
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(left: 12.0.w, right: 12.w, bottom: 22.h),
        child: Row(
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30.r),
                child: SizedBox(
                  height: 42.h,
                  child: CustomTextFormField(
                    controller: TextEditingController(),
                    keyBoardType: TextInputType.text,
                    hintText: "Add Comment",
                    validatorText: "",
                    fillColor: Colors.white12,
                  ),
                ),
              ),
            ),
            gapW(10),
            GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      backgroundColor: Colors.black,
                      builder: (BuildContext builderContext) {
                        return SizedBox(
                          width: double.maxFinite,
                          child: Column(
                            children: [
                              Text(
                                "Support Stream",
                                style: Styles.styleWhite19,
                              ),
                              gapH(10),
                              Expanded(
                                child: GridView.builder(
                                  itemCount: 8,
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                          childAspectRatio: 1.2,
                                          mainAxisSpacing: 4,
                                          crossAxisSpacing: 4,
                                          crossAxisCount: 5),
                                  itemBuilder: (context, index) =>
                                      GestureDetector(
                                          onTap: () {
                                            Navigator.pop(context);
                                            isImageshown = !isImageshown;

                                            setState(() {});
                                            Timer(const Duration(seconds: 2),
                                                () {
                                              isImageshown = !isImageshown;
                                              setState(() {});
                                            });
                                          },
                                          child: FittedBox(
                                            child: Image(
                                              width: 20.w,
                                              height: 20.h,
                                              fit: BoxFit.cover,
                                              image: const NetworkImage(
                                                  'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/512dfb9d-bf36-438e-9bea-2c7951ad7a51/d7dy4rd-2f99d84b-ace6-4b19-a342-33dc2e78cf47.gif?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzUxMmRmYjlkLWJmMzYtNDM4ZS05YmVhLTJjNzk1MWFkN2E1MVwvZDdkeTRyZC0yZjk5ZDg0Yi1hY2U2LTRiMTktYTM0Mi0zM2RjMmU3OGNmNDcuZ2lmIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.kLxL6GzBuDqivtYYGJcrHJHF1rxXeLFFabampcT1yyE'),
                                            ),
                                          )),
                                ),
                              ),
                            ],
                          ),
                        );
                      });
                },
                child: Image.asset(
                  "assets/images/gift.png",
                  height: 25.h,
                )),
            gapW(5),
            const Icon(
              Icons.favorite,
              color: Colors.red,
            ),
          ],
        ),
      ),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Image(
                  width: double.maxFinite,
                  height: 200.h,
                  fit: BoxFit.fitHeight,
                  image: const NetworkImage(
                      "https://www.epiphan.com/wp-content/uploads/2019/04/How-to-live-stream-an-event-well_FB.jpg")),
              Container(
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
                  color: Colors.red,
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
                      children: [
                        Icon(
                          Icons.live_tv,
                          color: Colors.white,
                        ),
                        Text(
                          "Live",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              isImageshown == true
                  ? SlideInUp(
                      animate: true,
                      child: const Image(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/512dfb9d-bf36-438e-9bea-2c7951ad7a51/d7dy4rd-2f99d84b-ace6-4b19-a342-33dc2e78cf47.gif?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzUxMmRmYjlkLWJmMzYtNDM4ZS05YmVhLTJjNzk1MWFkN2E1MVwvZDdkeTRyZC0yZjk5ZDg0Yi1hY2U2LTRiMTktYTM0Mi0zM2RjMmU3OGNmNDcuZ2lmIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.kLxL6GzBuDqivtYYGJcrHJHF1rxXeLFFabampcT1yyE'),
                      ),
                    )
                  : const SizedBox(),
            ],
          ),
          Expanded(
            child: ListView(
              children: comments.map((e) => e).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
