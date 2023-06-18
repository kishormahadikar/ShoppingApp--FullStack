import 'package:flutter/material.dart';
import 'package:shopapp/screens/cart_screen.dart';
import 'icon_btn_with_counter.dart';
import 'search_field.dart';

class HomeHeader extends StatefulWidget {
  const HomeHeader({Key key}) : super(key: key);

  @override
  State<HomeHeader> createState() => _HomeHeaderState();
}

class _HomeHeaderState extends State<HomeHeader> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(Icons.menu)),
        SearchField(),
        IconBtnWithCounter(
          iconn: Icons.shopping_cart,
          press: () { Navigator.pushNamed(context, CartScreen.routeName);},
        ),
        IconBtnWithCounter(
          iconn: Icons.notifications,
          numOfitem: 3,
          press: () {},
        ),
      ],
    );
  }
}
