import 'package:flutter/material.dart';
import 'package:new_auth/screen/login/Login.dart';
import 'package:new_auth/screen/welcome/welcomescreen.dart';
import 'package:new_auth/theme/color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      primaryColor: maincolor,
      scaffoldBackgroundColor: Colors.white
      ),
      routes: {
        "login":(context) => Login()
      },
      home: welcome_screen()
    );
  }
}

