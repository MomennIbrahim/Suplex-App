import 'package:flutter/material.dart';

push({required BuildContext context,required Widget widget}){
  Navigator.push(context, MaterialPageRoute(builder: (context)=> widget));
}

pushReplacement({required BuildContext context,required Widget widget}){
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> widget));
}

// customNavigatorAndRemoveUntil({required BuildContext context,required Widget widget}){
//   Navigator.of(context).pushAndRemoveUntil(CustomPageRoute(page: widget),(route) => false,);
// }