import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suplex/core/utlis/custom_navigator.dart';
import 'package:suplex/core/utlis/custom_size.dart';
import 'package:suplex/core/utlis/styles.dart';
import 'package:suplex/core/widgets/back_icon.dart';
import 'package:suplex/core/widgets/custom_button.dart';
import 'package:suplex/features/setting_&_privacy/presentation/views/blocked_account.dart';

class PrivacyAndSecurityView extends StatefulWidget {
  const PrivacyAndSecurityView({super.key});

  @override
  State<PrivacyAndSecurityView> createState() => _PrivacyAndSecurityViewState();
}

bool isSwitched = false;

class _PrivacyAndSecurityViewState extends State<PrivacyAndSecurityView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.w),
        child: Column(
          children: [
            gapH(MediaQuery.sizeOf(context).height * 0.075),
            Row(
              children: [
                const BackIcon(),
                Expanded(
                  child: Text(
                    "Privacy & Securety",
                    style: Styles.style19,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            gapH(MediaQuery.sizeOf(context).height * 0.05),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Private Account', style: Styles.style19),
                Switch(
                    thumbColor: MaterialStateProperty.all(Colors.white),
                    activeColor: Colors.green,
                    trackOutlineColor: MaterialStateProperty.all(Colors.white),
                    focusColor: Colors.green,
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                      });
                    }),
              ],
            ),
            gapH(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Activity status', style: Styles.style19),
                Switch(
                    thumbColor: MaterialStateProperty.all(Colors.white),
                    activeColor: Colors.green,
                    trackOutlineColor: MaterialStateProperty.all(Colors.white),
                    focusColor: Colors.green,
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                      });
                    }),
              ],
            ),
            gapH(60),
            customContainerSetting(text: "Comment",onTap: (){}),
            gapH(20),
            customContainerSetting(text: "Story",onTap: (){}),
            gapH(20),
            customContainerSetting(text: "Blocked Account",onTap: (){
              push(context: context, widget: const BlockedAccountView(),withNav: false);
            }),
            gapH(15),
            Align(
              alignment: Alignment.centerLeft,
              child:
                  CustomButton(height: 35.h, text: 'Logout', onPressed: () {}),
            ),
          ],
        ),
      ),
    );
  }
}

Widget customContainerSetting({required String text,required void Function()? onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      padding: const EdgeInsets.all(10),
      width: double.maxFinite,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.r),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                spreadRadius: 2,
                offset: const Offset(0, 2),
                blurRadius: 7,
                color: Colors.grey[400]!),
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: Styles.style17W600,
          ),
          const Icon(Icons.keyboard_arrow_right)
        ],
      ),
    ),
  );
}
