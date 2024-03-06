import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utlis/styles.dart';

class ShareProfileView extends StatelessWidget {
  const ShareProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        //
        children: [
          Row(
            children: [
              SvgPicture.asset("assets/images/arrow-back.svg"),
              Expanded(
                  child: Text(
                    "Setting",
                    style: Styles.style19,
                    textAlign: TextAlign.center,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
