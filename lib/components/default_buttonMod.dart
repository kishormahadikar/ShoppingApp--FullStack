import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class DefaultButtonMod extends StatelessWidget {
  DefaultButtonMod({
    Key key,
    this.text,
    this.press,
    this.color,
    this.child
  }) : super(key: key);
  final String text;
  final Function press;
  Widget child;
  Color color = kPrimaryColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56, //c
      child: TextButton(
        style: TextButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          primary: Colors.white,
          backgroundColor: color,
        ),
        onPressed: press as void Function(),
        child: child
      ),
    );
  }
}