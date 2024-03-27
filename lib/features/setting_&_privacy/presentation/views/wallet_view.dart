import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suplex/core/constance.dart';
import 'package:suplex/core/utlis/custom_size.dart';
import 'package:suplex/core/utlis/styles.dart';
import 'package:suplex/core/widgets/custom_appbar.dart';
import 'package:suplex/features/setting_&_privacy/presentation/views/widgets/charge_widget.dart';
import 'package:suplex/features/setting_&_privacy/presentation/views/widgets/withdraw_widget.dart';

class WalletView extends StatelessWidget {
  const WalletView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  gapH(50),
                  const CustomAppbar(
                    title: "Wallet",
                  ),
                  gapH(16),
                  Stack(
                    children: [
                      const Image(
                          image: AssetImage("assets/images/wallet fram.png")),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              "Your credit is:",
                              style: Styles.styleWhite12,
                            ),
                            Text(
                              "400.50",
                              style: Styles.styleWhite19,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  gapH(20),
                  TabBar(tabs: [
                    Text(
                      "Withdraw",
                      style: Styles.style19
                          .copyWith(color: Constance.kPrimaryColor),
                    ),
                    const Text(
                      "Charge",
                    ),
                  ]),
                  const Expanded(
                    child: TabBarView(
                        children: [WithdrawWidget(), ChargeWidget()]),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
