import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopapp/providers/auth.dart';
import 'package:shopapp/screens/auth_screen.dart';
import 'profile_menu.dart';
import 'profile_pic.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(height: 20),
          ProfileMenu(
            text: "My Account",
            icon: Icons.account_circle_outlined,
            press: () => {},
          ),
          ProfileMenu(
            text: "Notifications",
            icon: Icons.notifications_active,
            press: () {},
          ),
          ProfileMenu(
            text: "Settings",
            icon: Icons.settings,
            press: () {},
          ),
          ProfileMenu(
            text: "Help Center",
            icon: Icons.help_center,
            press: () {},
          ),
          
          ProfileMenu(
            text: "Log Out",
            icon: Icons.logout,
            press: ()  {
               Provider.of<Auth>(context, listen: false).logout();
            }
            ,
          ),
        ],
      ),
    );
  }
}
