import 'package:flutter/material.dart';
import 'bottom_nav_bar.dart';
import './enums.dart';

import 'components/body.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = "/profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
         shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(15),
        bottomRight: Radius.circular(15)
      )
    ),
      ),
      body: Body(),
      //bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}
