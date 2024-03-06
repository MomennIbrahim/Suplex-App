import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:suplex/core/utlis/custom_size.dart';
import 'package:suplex/core/utlis/styles.dart';
import 'package:suplex/core/widgets/custom_button.dart';
import 'package:suplex/core/widgets/custom_text_form_field.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

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
                SvgPicture.asset("assets/images/arrow-back.svg"),
                Expanded(
                  child: Text(
                    "Edit Profile",
                    style: Styles.style19,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            gapH(38),
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
              child: CustomButton(text: 'Save Edit', onPressed: () {}),
            ),
          ],
        ),
      ),
    );
  }
}
