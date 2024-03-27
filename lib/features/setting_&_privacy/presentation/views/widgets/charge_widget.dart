import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utlis/custom_size.dart';
import '../../../../../core/utlis/styles.dart';

class ChargeWidget extends StatelessWidget {
  const ChargeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          gapH(10),
          Text("Charging Packages", style: Styles.style18),
          gapH(20),
          ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) => Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.15),
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: const Offset(0, 3))
                  ]),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 4.0.h, horizontal: 8.w),
                child: Row(
                  children: [
                    Text(
                      "25 Point",
                      style: Styles.style16,
                    ),
                    gapW(5),
                    SizedBox(
                      height: 35.h,
                      child: const VerticalDivider(
                        width: 10,
                        color: Colors.grey,
                      ),
                    ),
                    gapW(5),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Each Point Equal 5 hlla",
                          style: Styles.style12,
                        ),
                        Text(
                          "1.25 SAR",
                          style: Styles.style12,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            separatorBuilder: (context, index) => gapH(10),
            itemCount: 6,
          )
        ],
      ),
    );
  }
}
