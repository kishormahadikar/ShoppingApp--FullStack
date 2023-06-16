import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopapp/screens/profile/profile_screen.dart';
import 'package:shopapp/screens/tabscreen.dart';
import '../../constants.dart';
import './enums.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key key,
    @required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: IconButton(
                icon: Icon(Icons.shopify),
                  color: MenuState.home == selectedMenu
                      ? kPrimaryColor
                      : inActiveIconColor,
                ),
                // icon: SvgPicture.asset(
                //   "assets/icons/Shop Icon.svg",
                //   color: MenuState.home == selectedMenu
                //       ? kPrimaryColor
                //       : inActiveIconColor,
                // ),
                onPressed: () =>
                    Navigator.pushNamed(context,TabScreen.routeName),
              ),
              IconButton(
                icon:Icon( Icons.favorite),
                onPressed: () {},
              ),
              IconButton(
               icon: const Icon(Icons.chat_bubble_rounded),
                  color: MenuState.home == selectedMenu
                      ? kPrimaryColor
                      : inActiveIconColor,
                
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.account_box),
                  color: MenuState.home == selectedMenu
                      ? Colors.deepPurple
                      : inActiveIconColor,
                // icon: SvgPicture.asset(
                //   "assets/icons/User Icon.svg",
                //   color: MenuState.profile == selectedMenu
                //       ? kPrimaryColor
                //       : inActiveIconColor,
                
                onPressed: () =>
                    Navigator.pushNamed(context, ProfileScreen.routeName),
              ),
            ],
          )),
    );
  }
}
