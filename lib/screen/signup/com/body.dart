import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:new_auth/screen/login/components/roundedbuttonfiled.dart';
import 'package:new_auth/screen/login/components/textfiled.dart';
import 'package:new_auth/screen/signup/com/backgroun.dart';
import 'package:new_auth/screen/signup/com/social.dart';
import 'package:new_auth/screen/welcome/components/rbutton.dart';
import 'package:new_auth/theme/color.dart';

class Body extends StatelessWidget {
  final Widget child;
  const Body({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return backgroundsignup(
      child: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "Sign Up",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            "Code_with_me_2023",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SvgPicture.asset(
            "assets/icons/signup.svg",
            height: size.height * 0.34,
          ),
          roundedinputfiled(htext: "your email", icon: Icon(Icons.person)),
          roundedinputfiled(htext: "your password", icon: Icon(Icons.lock)),
          Rbutton(text: "Signup", color: maincolor, textcolor: mcolor),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already hava an Account?",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  "Login ",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, color: maincolor),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Center(
              child: Text(
            "_______________OR_______________",
            style: TextStyle(color: maincolor),
          )),
          SizedBox(
            height: 30,
          ),
          SocialLogin()
        ]),
      ),
    );
  }
}
