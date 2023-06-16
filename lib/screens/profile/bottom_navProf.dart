import 'package:flutter/material.dart';
import 'package:shopapp/screens/products_overview_screen.dart';
import '../../constants.dart';

enum MenuState { home, favourite, message, profile }

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    @required this.selectedMenu,
  });

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
                icon: Icon(Icons.shopify_rounded),
                  color: MenuState.home == selectedMenu
                      ? kPrimaryColor
                      : inActiveIconColor,
                ),
                // SvgPicture.asset(
                //   "assets/icons/Shop Icon.svg"
                  
                //   color: MenuState.home == selectedMenu
                //       ? kPrimaryColor
                //       : inActiveIconColor,
                // ),
                onPressed: () {}
                    //Navigator.pushNamed(context, ProductsOverviewScreen.routename),
              ),
              IconButton(
                icon: IconButton(
                icon: Icon(Icons.favorite),
                  color: MenuState.home == selectedMenu
                      ? kPrimaryColor
                      : inActiveIconColor,
                ),
                //SvgPicture.asset("assets/icons/Heart Icon.svg"),
                onPressed: () {},
              ),
              IconButton(
                icon: IconButton(
                icon: const Icon(Icons.chat_bubble_rounded),
                  color: MenuState.home == selectedMenu
                      ? kPrimaryColor
                      : inActiveIconColor,
                ),
                //icon: SvgPicture.asset("assets/icons/Chat bubble Icon.svg"),
                onPressed: () {},
              ),
              IconButton(
                icon: IconButton(
                icon: Icon(Icons.account_box),
                  color: MenuState.home == selectedMenu
                      ? Colors.deepPurple
                      : inActiveIconColor,
                ),
                //icon: SvgPicture.asset(
                  // //"assets/icons/User Icon.svg",
                  // color: MenuState.profile == selectedMenu
                  //     ? kPrimaryColor
                  //     : inActiveIconColor,
                //),
                onPressed: () {}
                    //Navigator.pushNamed(context, ProfileScreen.routeName),
              ),
            ],
          )),
    );
  }
}
