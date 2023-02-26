import 'dart:ffi';

import 'package:flutter/material.dart';
import '../Constants.dart' as constant;

class textfield extends StatelessWidget {
  final String text;
  final bool isPassword;
  final Function(String) onchanged;

  const textfield({
    super.key,
    required this.text,
    required this.isPassword, required this.onchanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: TextField(
        onChanged: onchanged,
        style: TextStyle(
          color: constant.dayPrimary,
        ),
        obscureText: isPassword,
        obscuringCharacter: '%',
        decoration: InputDecoration(
            hintText: text,
            hintStyle: TextStyle(
              color: constant.dayPrimary,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic,
              fontSize: 30.0,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: constant.dayPrimary,
                width: 2,
                style: BorderStyle.solid,
              ),
            )),
      ),
    );
  }
}
