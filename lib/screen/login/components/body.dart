import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:new_auth/screen/login/components/background.dart';
import 'package:new_auth/screen/login/components/roundedbuttonfiled.dart';
import 'package:new_auth/screen/login/components/textfiled.dart';
import 'package:new_auth/screen/signup/signup.dart';
import 'package:new_auth/screen/welcome/components/rbutton.dart';
import 'package:new_auth/theme/color.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Login",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            "Code_with_me_2023",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SvgPicture.asset(
            "assets/icons/login.svg",
            height: size.height * 0.34,
          ),
          roundedinputfiled(
            htext: 'your email',
            icon: Icon(
              Icons.person,
              color: maincolor,
            ),
          ),
          roundedinputfiled(
            htext: 'your password',
            icon: Icon(
              Icons.lock,
              color: maincolor,
            ),
          ),
          Rbutton(text: "Login", color: maincolor, textcolor: mcolor),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Dont hava an Account?",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Signup()));
                },
                child: Text(
                  "Sign UP",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, color: maincolor),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
