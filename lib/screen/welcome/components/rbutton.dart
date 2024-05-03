import 'package:flutter/material.dart';
import 'package:new_auth/screen/login/Login.dart';
import 'package:new_auth/theme/color.dart';

class Rbutton extends StatelessWidget {
  final String text;
  final Color color, textcolor;

  Rbutton({
    super.key,
    required this.text,
    required this.color,
    required this.textcolor,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: MaterialButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Login()));
          },
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          color: color,
          child: Text(
            text,
          ),
        ),
      ),
    );
  }
}
