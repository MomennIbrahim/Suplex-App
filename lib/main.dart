import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suplex/bottom_nv.dart';
import 'package:suplex/core/constance.dart';
import 'package:suplex/features/profile/presentation/views/switch_account_view.dart';
import 'package:suplex/features/setting_&_privacy/presentation/views/setting_views.dart';
import 'package:suplex/features/setting_&_privacy/presentation/views/share_profile_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      ensureScreenSize: true,
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            appBarTheme: const AppBarTheme(
                iconTheme: IconThemeData(
              color: Colors.black,
            )),
            fontFamily: "",
            colorScheme:
                ColorScheme.fromSeed(seedColor: Constance.kPrimaryColor),
            useMaterial3: true,
          ),
          home:  const ShareProfileView(),
        );
      },
    );
  }
}
