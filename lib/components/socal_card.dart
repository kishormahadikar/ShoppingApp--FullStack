import 'package:flutter/material.dart';

import '../size_config.dart';

class SocalCard extends StatelessWidget {
  const SocalCard({
    Key key,
    this.icon,
    this.press,
  }) : super(key: key);

  final String icon;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press as void Function(),
      child: Container(
        margin:
            EdgeInsets.symmetric(horizontal: 10), //c
        padding: EdgeInsets.all(10), //c
        height: 40, //c
        width: 40, //c
        decoration: BoxDecoration(
          color: Color(0xFFF5F6F9),
          shape: BoxShape.circle,
        ),
        child: Image.network('https://w7.pngwing.com/pngs/42/677/png-transparent-credit-card-computer-icons-visa-payment-card-icon-free-s-credit-card-angle-text-rectangle.png'),
      ),
    );
  }
}
