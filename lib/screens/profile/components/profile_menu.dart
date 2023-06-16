import 'package:flutter/material.dart';

import '../../../../constants.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key key,
    @required this.text,
    @required this.icon,
    this.press,
  }) : super(key: key);

  final String text;
  final IconData icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextButton(
        style: TextButton.styleFrom(
          primary: kPrimaryColor,
          padding: EdgeInsets.all(20),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          backgroundColor: Color(0xFFF5F6F9),
        ),
        onPressed: press,
        child: Row(
          children: [
            Icon(
              icon,
              color: kPrimaryColor,
              size: 30,
            ),
            const SizedBox(width: 20),
            Expanded(
                child: Text(
              text,
              style: const TextStyle(fontSize: 17),
            )),
            const Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }
}
