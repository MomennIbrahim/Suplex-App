import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suplex/core/utlis/custom_navigator.dart';
import 'package:suplex/core/utlis/custom_size.dart';
import 'package:suplex/core/utlis/styles.dart';
import 'package:suplex/core/widgets/back_icon.dart';
import 'package:suplex/features/setting_&_privacy/presentation/views/account_view.dart';
import 'package:suplex/features/setting_&_privacy/presentation/views/privacy_security.dart';
import 'package:suplex/features/setting_&_privacy/presentation/views/share_profile_view.dart';

class SettingViews extends StatelessWidget {
  const SettingViews({super.key});

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
                  "Setting",
                  style: Styles.style19,
                  textAlign: TextAlign.center,
                )),
              ],
            ),
            gapH(20.h),
            customContainerSetting(text: "Account", onPressed: () {
              push(context: context, widget: const AccountView());
            }),
            gapH(20.h),
            customContainerSetting(
                text: "Privacy & Securety", onPressed: () {
              push(context: context, widget: const PrivacyAndSecurityView());
            }),
            gapH(20.h),
            customContainerSetting(text: "Share Profile", onPressed: () {
              push(context: context, widget: const ShareProfileView());

            }),
          ],
        ),
      ),
    );
  }

  Widget customContainerSetting(
      {required String text, required void Function() onPressed}) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(10),
        width: double.maxFinite,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  spreadRadius: 3,
                  offset: const Offset(0, 3),
                  blurRadius: 7,
                  color: Colors.grey[200]!),
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
}
