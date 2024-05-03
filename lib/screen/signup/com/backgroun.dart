import 'package:flutter/material.dart';

class backgroundsignup extends StatelessWidget {
  final Widget child;
  const backgroundsignup({
    super.key, required this.child,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
              height: 120,
              top: 0,
              left: 0,
              child: Image.asset("assets/images/signup_top.png")),
          Positioned(
              bottom: 0,
              left: 0,
              child: Image.asset(
                "assets/images/main_bottom.png",
                width: size.width * 0.25,
              )),
          child
        ],
      ),
    );
  }
}
