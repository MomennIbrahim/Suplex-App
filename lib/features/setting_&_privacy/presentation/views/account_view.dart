import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suplex/core/utlis/custom_size.dart';
import 'package:suplex/core/utlis/styles.dart';
import 'package:suplex/core/widgets/back_icon.dart';
import 'package:suplex/core/widgets/custom_button.dart';
import 'package:suplex/core/widgets/custom_text_form_field.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

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
                    "Account ",
                    style: Styles.style19,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            gapH(20),
            Stack(
              children: [
                CircleAvatar(
                  radius: 50.r,
                  backgroundImage: const NetworkImage(
                      'https://media.licdn.com/dms/image/D4D03AQFRaGAcPQ071w/profile-displayphoto-shrink_800_800/0/1692686064294?e=2147483647&v=beta&t=l9hOw0qSdYrGO6uHpT7kfQgHC8MWLuFij5Ksyji8CUQ'),
                ),
                CircleAvatar(
                  radius: 50.r,
                  backgroundColor: Colors.white.withOpacity(0.3),
                  child: const Icon(
                    Icons.camera_alt,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            gapH(10),
            Text(
              'Change Photo',
              style: Styles.style19,
            ),
            gapH(20.h),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'User Information',
                style: Styles.style19,
              ),
            ),
            gapH(10.h),
            CustomTextFormField(
                controller: TextEditingController(),
                keyBoardType: TextInputType.text,
                hintText: 'User Name',
                validatorText: ''),
            gapH(20),
            CustomTextFormField(
                controller: TextEditingController(),
                keyBoardType: TextInputType.text,
                hintText: 'Phone Number',
                validatorText: ''),
            gapH(20),
            CustomTextFormField(
                controller: TextEditingController(),
                keyBoardType: TextInputType.text,
                hintText: 'Email',
                validatorText: ''),
            gapH(20),
            Align(
              alignment: Alignment.centerRight,
              child: CustomButton(text: 'Edit', onPressed: () {}),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.r)),
                onPressed: () {},
                color: Colors.white,
                child: Text(
                  'Delete Account',
                  textAlign: TextAlign.center,
                  style: Styles.style17W600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
