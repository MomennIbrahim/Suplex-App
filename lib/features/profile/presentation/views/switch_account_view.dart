import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:suplex/core/utlis/custom_size.dart';
import 'package:suplex/core/utlis/styles.dart';

class SwitchAccountView extends StatelessWidget {
  const SwitchAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Switch Account",
          style: Styles.style14,
        ),
        centerTitle: true,
        toolbarHeight: 200,
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.cancel))],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: const NetworkImage(
                      "https://images.unsplash.com/photo-1538991383142-36c4edeaffde?q=80&w=1471&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                radius: 35.r,
                ),
                gapW(10.w),
                Text("My Account",style: Styles.style12W600,),
                const Spacer(),
                SvgPicture.asset("assets/images/check.svg",height: 20.h,width: 20.w,)
              ],
            ),
            gapH(10.h),
            const Divider(color: Colors.grey,),
            gapH(10.h),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey[400],
                  radius: 30.r,
                  child: Icon(Icons.add,size: 30.r,),
                ),
                gapW(10.w),
                const Text(
                    "Add account")
              ],
            )
          ],
        ),
      ),
    );
  }
}
