import 'package:flutter/material.dart';
import 'package:new_auth/screen/login/components/textfiled.dart';

class roundedinputfiled extends StatelessWidget {
  final String htext;
   const roundedinputfiled({
    super.key,
    required this.htext, required Icon icon,
   });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 45),
      child: Textfiled(
        child: TextFormField(
          decoration: InputDecoration(
               hintText: htext, border: InputBorder.none),
        ),
      ),
    );
  }
}
