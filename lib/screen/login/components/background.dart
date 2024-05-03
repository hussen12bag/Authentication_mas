import 'package:flutter/material.dart';

class background extends StatelessWidget {
  final Widget child;
  const background({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
              height: 200,
              top: 0,
              left: 0,
              child: Image.asset("assets/images/main_top.png")),
          Positioned(
              height: 150,
              right: 6,
              bottom: 10,
              child: Image.asset("assets/images/login_bottom.png")),
          child
        ],
      ),
    );
  }
}
