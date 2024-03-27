import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suplex/core/utlis/custom_navigator.dart';
import 'package:suplex/features/setting_&_privacy/presentation/views/checkout_view.dart';

import '../../../../../core/utlis/custom_size.dart';
import '../../../../../core/utlis/styles.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';
import '../../../../../core/widgets/custom_text_rich.dart';

class WithdrawWidget extends StatelessWidget {
  const WithdrawWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        gapH(15),
        Text(
          "Enter the amount you want to withdraw",
          style: Styles.styleGrey15,
        ),
        gapH(5),
        CustomTextFormField(
          controller: TextEditingController(),
          keyBoardType: TextInputType.number,
          validatorText: "",
          hintText: "Enter the amount you want to withdraw",
        ),
        gapH(16),
        const CustomTextRich(
          text1: "Each Point Equal",
          text2: " 2.4",
        ),
        gapH(15),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.report_outlined),
            gapW(10),
            const CustomTextRich(
              text1: "minimum withdraw amount ",
              text2: "10.000",
            ),
          ],
        ),
        gapH(30),
        CustomButton(
          text: "Withdraw",
          onPressed: () {
            push(context: context, widget: const CheckoutView());
          },
          height: 35.h,
        )
      ],
    );
  }
}
