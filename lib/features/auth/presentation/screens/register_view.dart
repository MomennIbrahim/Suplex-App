import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suplex/core/utlis/custom_navigator.dart';
import 'package:suplex/core/utlis/custom_size.dart';
import 'package:suplex/core/utlis/styles.dart';
import 'package:suplex/core/widgets/custom_button.dart';
import 'package:suplex/core/widgets/custom_text_form_field.dart';
import 'package:suplex/features/auth/presentation/screens/login_view.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              gapH(MediaQuery.sizeOf(context).height * 0.1),
              Text(
                "Sign up",
                style: Styles.style35,
              ),
              gapH(20.h),
              Text(
                "User Name",
                style: Styles.styleZilla17,
              ),
              gapH(12.h),
              CustomTextFormField(
                controller: TextEditingController(),
                keyBoardType: TextInputType.name,
                style: Styles.style16,
                fillColor: Colors.black12,
                labelText: "Enter username",
                validatorText: "username is required",
              ),
              gapH(12.h),
              Text(
                "Phone number",
                style: Styles.styleZilla17,
              ),
              gapH(12.h),
              CustomTextFormField(
                controller: TextEditingController(),
                keyBoardType: TextInputType.name,
                style: Styles.style16,
                fillColor: Colors.black12,
                labelText: "Enter phone number",
                validatorText: "phone is required",
              ),
              gapH(12.h),
              Text(
                "Password",
                style: Styles.styleZilla17,
              ),
              gapH(12.h),
              CustomTextFormField(
                controller: TextEditingController(),
                keyBoardType: TextInputType.name,
                style: Styles.style16,
                fillColor: Colors.black12,
                labelText: "Enter Password",
                suffix: const Icon(
                  Icons.visibility,
                  color: Colors.grey,
                ),
                validatorText: "Password is required",
              ),
              gapH(12.h),
              Text(
                "Confirm password",
                style: Styles.styleZilla17,
              ),
              gapH(12.h),
              CustomTextFormField(
                controller: TextEditingController(),
                keyBoardType: TextInputType.name,
                style: Styles.style16,
                fillColor: Colors.black12,
                labelText: "Enter password again",
                suffix: const Icon(
                  Icons.visibility,
                  color: Colors.grey,
                ),
                validatorText: "confirm password is required",
              ),
              gapH(10.h),
              Align(
                  alignment: Alignment.centerRight,
                  child: CustomButton(text: "Sign up", onPressed: () {})),
              TextButton(
                  onPressed: () {
                    push(context: context, widget: const LoginView());
                  },
                  child: const Text(
                    "Sign in",
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
