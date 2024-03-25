import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suplex/bottom_nv.dart';
import 'package:suplex/core/utlis/custom_navigator.dart';
import 'package:suplex/core/utlis/custom_size.dart';
import 'package:suplex/core/utlis/styles.dart';
import 'package:suplex/core/widgets/custom_button.dart';
import 'package:suplex/core/widgets/custom_text_form_field.dart';
import 'package:suplex/features/auth/presentation/screens/register_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              gapH(MediaQuery.sizeOf(context).height * 0.15),
              Text(
                "Login",
                style: Styles.style35,
              ),
              gapH(20.h),
              Text(
                "User Name or Phone",
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
                "Password",
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
              Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "forget password",
                        style: Styles.styleGrey14,
                      ))),
              Align(
                  alignment: Alignment.centerRight,
                  child: CustomButton(
                      text: "Sign In",
                      onPressed: () {
                        push(context: context, widget: const CustomBottomNav());
                      })),
              TextButton(
                  onPressed: () {
                    push(context: context, widget: const RegisterView());
                  },
                  child: const Text("Sign up")),
            ],
          ),
        ),
      ),
    );
  }
}
