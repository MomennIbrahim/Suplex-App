import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:suplex/core/utlis/custom_size.dart';
import 'package:suplex/core/utlis/styles.dart';

class BlockedAccountView extends StatelessWidget {
  const BlockedAccountView({super.key});

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
                    "Blocked Account",
                    style: Styles.style19,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            gapH(MediaQuery.sizeOf(context).height * 0.05),
            Align(
                alignment: Alignment.center,
                child: Image.network(
                    'https://media.licdn.com/dms/image/D4D03AQFRaGAcPQ071w/profile-displayphoto-shrink_800_800/0/1692686064294?e=2147483647&v=beta&t=l9hOw0qSdYrGO6uHpT7kfQgHC8MWLuFij5Ksyji8CUQ')),
            gapH(20),
            Text(
              'You have blocked this account',
              style: Styles.style19,
            ),
          ],
        ),
      ),
    );
  }
}
