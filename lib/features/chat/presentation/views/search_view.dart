import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suplex/core/constance.dart';
import 'package:suplex/core/utlis/custom_size.dart';
import 'package:suplex/core/utlis/styles.dart';
import 'package:suplex/core/widgets/custom_button.dart';
import 'package:suplex/core/widgets/custom_text_form_field.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.w),
        child: Column(
          children: [
            gapH(MediaQuery.sizeOf(context).height * .075),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Add Friends",
                        style: Styles.style19,
                      )),
                ),
                Icon(
                  Icons.cancel_outlined,
                  size: 30.r,
                ),
              ],
            ),
            gapH(20),
            SizedBox(
              height: 40.h,
              child: CustomTextFormField(
                fillColor: Constance.kPrimaryColor.withOpacity(0.35),
                controller: TextEditingController(),
                suffix: Icon(
                  Icons.search_rounded,
                  color: Colors.white,
                  size: 30.r,
                ),
                keyBoardType: TextInputType.text,
                validatorText: "",
              ),
            ),
            gapH(20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Select a group chat",
                  style:
                      Styles.styleBlack15.copyWith(fontWeight: FontWeight.w600),
                ),
                CustomButton(
                  height: 30.h,
                  style: Styles.styleWhite17.copyWith(fontWeight: FontWeight.w600),
                  text: "Start Chat",
                  buttonColor: Colors.red,
                  onPressed: () {},
                ),
              ],
            ),
            Expanded(
              child: ListView.separated(itemBuilder: (context, index) => Row(
                children: [
                  CircleAvatar(
                    radius: 30.r,
                    backgroundImage: const NetworkImage(
                        "https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e."
                            "jpg"),
                  ),
                  gapW(15.w),
                  Expanded(
                    child: Text(
                      "Lary",
                      style: Styles.style17W600,
                    ),
                  ),
                ],
              ),
                separatorBuilder: (context, index) => gapH(15),
                itemCount: 5,
              ),
            )

          ],
        ),
      ),
    );
  }
}
