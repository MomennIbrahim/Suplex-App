import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:suplex/core/utlis/custom_size.dart';
import 'package:suplex/core/utlis/styles.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                gapH(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(),
                    Text(
                      "Charge",
                      style: Styles.style19,
                    ),
                    const Spacer(),
                    CircleAvatar(
                      radius: 15.r,
                      child: const Icon(Icons.question_mark_sharp),
                    ),
                  ],
                ),
                gapH(20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Your balance : 20 RSA",
                    style: Styles.style19,
                  ),
                ),
                const Divider(),
                gapH(20),
                Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Text(
                        "Exchanging Live Rewards balance for currencies",
                        style: Styles.style19,
                      ),
                    ),
                    const Expanded(
                      child: Icon(Icons.keyboard_arrow_right_rounded),
                    ),
                  ],
                ),
                gapH(12),
                Row(
                  children: [
                    Text(
                      "From Live Gifts : 45\$  ",
                      style: Styles.style17W600,
                    ),
                    SvgPicture.asset('assets/images/approximately-equal.svg'),
                    Text(
                      " 350 " r"EGP ",
                      style: Styles.style17W600,
                    ),
                  ],
                ),
                gapH(10),
                const Divider(),
                gapH(20),
                Expanded(
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 10.w,
                        childAspectRatio: 1,
                        mainAxisExtent: 120,
                        mainAxisSpacing: 10.h),
                    itemCount: 9,
                    itemBuilder: (context, index) {
                      return Container(
                        alignment: Alignment.center,
                        // width: 135.w,
                        // height: 80.h,
                        decoration: BoxDecoration(
                            color: Colors.grey[100],
                            border: Border.all(
                              width: .2.w,
                            ),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: .4,
                                offset: Offset(0, .5),
                              ),
                            ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "20",
                                  style: Styles.style25,
                                ),
                                gapW(5),
                                CircleAvatar(
                                  radius: 12.r,
                                  child: const Icon(Icons.tiktok_outlined),
                                ),
                              ],
                            ),
                            gapH(8),
                            Text(
                              '15.5 RSA',
                              style: Styles.style14,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                )
              ],
            )),
      ),
    );
  }
}
