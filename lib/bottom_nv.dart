import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:suplex/features/chat/presentation/views/chat_view.dart';
import 'package:suplex/features/friends/presentation/screens/friends_view.dart';
import 'package:suplex/features/home/presentation/views/home_view.dart';
import 'package:suplex/features/profile/presentation/views/profile_view.dart';
import '../../../../core/constance.dart';

class CustomBottomNav extends StatefulWidget {
  const CustomBottomNav({super.key});

  @override
  State<CustomBottomNav> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<CustomBottomNav> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: PersistentTabView(
        context,
        screens: const [
          HomeView(),
          FriendsView(),
          FriendsView(),
          ChatView(),
          ProfileView(),
        ],
        items: [
          PersistentBottomNavBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: index == 0? Constance.kPrimaryColor : Colors.white70,
              size:  35.r,
            ),
          ),
          PersistentBottomNavBarItem(
              icon: SvgPicture.asset(
                "assets/images/friends.svg",
                color: index == 1? Constance.kPrimaryColor : Colors.white70,

              )),
          PersistentBottomNavBarItem(
              activeColorPrimary: Constance.kPrimaryColor,
              iconSize: 120,
              icon: Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    radius: 40.r,
                    backgroundColor: Colors.black,
                  ),
                  SvgPicture.asset(
                    "assets/images/add.svg",
                    color: index == 2? Constance.kPrimaryColor : Colors.white70,

                  ),

                ],
              )),
          PersistentBottomNavBarItem(
              icon: SvgPicture.asset(
                "assets/images/chat.svg",
                color: index == 3? Constance.kPrimaryColor : Colors.white70,

              )),
          PersistentBottomNavBarItem(
              icon: SvgPicture.asset(
                "assets/images/profile.svg",
                color: index == 4? Constance.kPrimaryColor : Colors.white70,
              )),
        ],
        onItemSelected: (cindex) {
          setState(() {
            index = cindex;
          });
        },
        confineInSafeArea: true,
        backgroundColor: const Color(0xff222222),
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        stateManagement: true,
        hideNavigationBarWhenKeyboardShows: true,
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(30.0),
          colorBehindNavBar: Colors.white,
        ),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: const ItemAnimationProperties(
          duration: Duration(milliseconds: 200),
          curve: Curves.easeInOut,
        ),
        screenTransitionAnimation: const ScreenTransitionAnimation(
          animateTabTransition: true,
          curve: Curves.easeInOut,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle:
        NavBarStyle.style15, // Choose the nav bar style with this property.
      ),
    );
  }
}
