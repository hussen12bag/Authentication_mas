import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_auth/screen/welcome/components/background.dart';
import 'package:new_auth/screen/welcome/components/rbutton.dart';
import 'package:new_auth/screen/login/Login.dart';
import 'package:new_auth/theme/color.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: Text(
            "Code_with_Me_2023",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Text(
          "Hussaen",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: size.height * 0.03,
        ),
        SvgPicture.asset(
          "assets/icons/chat.svg",
          height: size.height * 0.45,
        ),
        SizedBox(
          height: size.height * 0.05,
        ),
        Rbutton(
          color: maincolor,
          text: "Login",
          textcolor: Colors.white,
        ),
        MaterialButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Login()));
          },
          child: Rbutton(
            color: mcolor,
            text: "Signin",
            textcolor: Colors.black,
          ),
        ),
      ]),
    );
  }
}
