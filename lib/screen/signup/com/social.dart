import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:new_auth/theme/color.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Row(
            children: [
              /////facebook
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [BoxShadow(color: maincolor, blurRadius: 10)]),
                  child: SvgPicture.asset(
                    'assets/icons/facebook.svg',
                    height: 30,
                    color: maincolor,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),

              /////google
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(35),
                      boxShadow: [BoxShadow(color: maincolor, blurRadius: 10)]),
                  child: SvgPicture.asset(
                    'assets/icons/google-plus.svg',
                    height: 30,
                    color: maincolor,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              /////twitter
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(35),
                      boxShadow: [BoxShadow(color: maincolor, blurRadius: 10)]),
                  child: SvgPicture.asset(
                    'assets/icons/twitter.svg',
                    height: 30,
                    color: maincolor,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
