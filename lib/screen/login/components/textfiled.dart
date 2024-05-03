import 'package:flutter/material.dart';
import 'package:new_auth/theme/color.dart';
class Textfiled extends StatelessWidget {
  final Widget child;
  Textfiled({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      width: size.width,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration:
          BoxDecoration(
            
            color: mcolor, borderRadius: BorderRadius.circular(29)),
      child: child,
    );
  }
}
