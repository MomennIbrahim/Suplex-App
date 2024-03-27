import 'package:checkbox_grouped/checkbox_grouped.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suplex/core/constance.dart';
import 'package:suplex/core/utlis/custom_size.dart';
import 'package:suplex/core/widgets/custom_appbar.dart';
import 'package:suplex/core/widgets/custom_button.dart';
import 'package:suplex/core/widgets/custom_text_form_field.dart';

import '../../../../core/utlis/styles.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          gapH(50),
          const CustomAppbar(title: "Checkout"),
          gapH(20),
          Text(
            "Your Buill Is",
            style: Styles.style14,
          ),
          gapH(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("2 items",
                  style: Styles.style14.copyWith(fontWeight: FontWeight.w500)),
              Text("50.00 SAR",
                  style: Styles.style14.copyWith(fontWeight: FontWeight.w500))
            ],
          ),
          gapH(5),
          const Divider(),
          gapH(5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Total", style: Styles.style25.copyWith(color: Colors.grey)),
              Text("50.00 SAR",
                  style: Styles.style25.copyWith(color: Colors.grey))
            ],
          ),
          gapH(20),
          Text("Choose Payment Method",
              style: Styles.style18.copyWith(color: Constance.kPrimaryColor)),
          SimpleGroupedCheckbox<int>(
            controller: GroupController(),
            itemsTitle: const ["Master Card", "Visa"],
            values: const [1, 2],
            onItemSelected: (value) {
              print(value);
            },
            helperGroupTitle: true,
            groupStyle: GroupStyle(
                activeColor: Constance.kPrimaryColor,
                itemTitleStyle: Styles.style14),
          ),
          gapH(15),
          Center(
              child: CustomButton(
                  text: "Pay",
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              scrollable: true,
                              content: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Card Details",
                                      style: Styles.style18.copyWith(
                                        color: Constance.kPrimaryColor,
                                      )),
                                  gapH(15),
                                  CustomTextFormField(
                                    controller: TextEditingController(),
                                    keyBoardType: TextInputType.number,
                                    hintText: "Enter card number",
                                    validatorText: "",
                                  ),
                                  gapH(10),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: CustomTextFormField(
                                          controller: TextEditingController(),
                                          keyBoardType: TextInputType.number,
                                          hintText: "CVV code",
                                          validatorText: "",
                                        ),
                                      ),
                                      gapW(5),
                                      Expanded(
                                        child: CustomTextFormField(
                                          controller: TextEditingController(),
                                          keyBoardType: TextInputType.number,
                                          hintText: "Select a card",
                                          validatorText: "",
                                        ),
                                      ),
                                    ],
                                  ),
                                  gapH(10),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: CustomTextFormField(
                                          controller: TextEditingController(),
                                          keyBoardType: TextInputType.number,
                                          hintText: "Select a year",
                                          validatorText: "",
                                        ),
                                      ),
                                      gapW(5),
                                      Expanded(
                                        child: CustomTextFormField(
                                          controller: TextEditingController(),
                                          keyBoardType: TextInputType.number,
                                          hintText: "Select a month",
                                          validatorText: "",
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ));
                  }))
        ],
      ),
    ));
  }
}
