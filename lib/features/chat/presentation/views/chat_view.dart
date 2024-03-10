import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:suplex/core/constance.dart';
import 'package:suplex/core/utlis/custom_size.dart';
import 'package:suplex/core/utlis/styles.dart';
import 'package:suplex/core/widgets/custom_text_form_field.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE3E3E3),
      bottomNavigationBar: Padding(
          padding: EdgeInsets.only(bottom: 30.0.h, right: 10.w, left: 10.w),
          child: CustomTextFormField(
            controller: TextEditingController(),
            radius: 100.r,
            keyBoardType: TextInputType.text,
            validatorText: "",
            hintText: "Send a message...",
            style: const TextStyle(color: Colors.black),
            suffix: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0.w),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(
                    "assets/images/chat_share.svg",
                    height: 20.h,
                  ),
                  gapW(5),
                  SvgPicture.asset(
                    "assets/images/send_chat.svg",
                    height: 20.h,
                  ),
                  gapW(5),
                  SvgPicture.asset(
                    "assets/images/emoje.svg",
                    height: 20.h,
                  ),
                ],
              ),
            ),
          )),
      appBar: AppBar(
        toolbarHeight: 40.h,
        backgroundColor: const Color(0xffE3E3E3),
        title: Row(
          children: [
            const CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg"),
            ),
            gapW(5),
            Text(
              "Lary",
              style: Styles.style17W600,
            )
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          gapH(MediaQuery.sizeOf(context).height * .025),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0.w),
              child: Container(
                width: MediaQuery.sizeOf(context).width / 1.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.r),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    "Forem Ipsun dolor sit amet consectetur",
                    style: Styles.style19W400,
                  ),
                ),
              ),
            ),
          ),
          gapH(20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0.w),
            child: Container(
              width: MediaQuery.sizeOf(context).width / 1.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7.r),
                color: Constance.kPrimaryColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  "Forem Ipsun dolor sit amet consectetur",
                  style: Styles.style19W400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
