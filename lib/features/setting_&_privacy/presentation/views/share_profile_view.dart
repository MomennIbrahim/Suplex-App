import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suplex/core/utlis/custom_size.dart';
import 'package:suplex/core/widgets/back_icon.dart';
import '../../../../core/utlis/styles.dart';

class ShareProfileView extends StatelessWidget {
  const ShareProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              gapH(MediaQuery.sizeOf(context).height * 0.075),
              Row(
                children: [
                  const BackIcon(),
                  Expanded(
                    child: Text(
                      "Share Profile",
                      style: Styles.style19,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              gapH(20),
              CircleAvatar(
                radius: 50.r,
                backgroundImage: const NetworkImage(
                    'https://media.licdn.com/dms/image/D4D03AQFRaGAcPQ071w/profile-displayphoto-shrink_800_800/0/1692686064294?e=2147483647&v=beta&t=l9hOw0qSdYrGO6uHpT7kfQgHC8MWLuFij5Ksyji8CUQ'),
              ),
              Text(
                'Omar Maamoun ',
                style: Styles.style19,
              ),
              gapH(20.h),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(7.r)
                ),
                child: Icon(
                  Icons.qr_code,
                  size: 150.sp,
                ),
              ),
              gapH(40.h),
              Container(
                padding: const EdgeInsets.all(10),
                width: double.maxFinite,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          spreadRadius: 2,
                          offset: const Offset(0, 2),
                          blurRadius: 7,
                          color: Colors.grey[400]!),
                    ]),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Profile Link',
                          style: Styles.style17W600,
                        ),
                        const Icon(Icons.keyboard_arrow_right),
                      ],
                    ),
                    gapH(15.h),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: Colors.grey[100],
                      ),
                      child: Row(
                        children: [
                          Text(
                            'Tx784984dbFaDbSA2500',
                            style: Styles.styleGrey14,
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.copy,
                            color: Colors.grey,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
