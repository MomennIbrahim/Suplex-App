import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

push(
    {required BuildContext context,
    required Widget widget,
    bool withNav = true}) {
  PersistentNavBarNavigator.pushNewScreen(
    context,
    screen: widget,
    withNavBar: withNav, // OPTIONAL VALUE. True by default.
    pageTransitionAnimation: PageTransitionAnimation.fade,
  );
  // Navigator.of(context).push(CustomPageRoute(page: widget));
}

pushReplacement({required BuildContext context,required Widget widget}){
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> widget));
}

// customNavigatorAndRemoveUntil({required BuildContext context,required Widget widget}){
//   Navigator.of(context).pushAndRemoveUntil(CustomPageRoute(page: widget),(route) => false,);
// }