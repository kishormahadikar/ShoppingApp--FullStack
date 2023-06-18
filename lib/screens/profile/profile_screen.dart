import 'dart:ui';

import 'package:flutter/material.dart';
import 'components/body.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = "/profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //   appBar: AppBar(
    //     backgroundColor: Colors.white70,
    //     title: Text("Profile",style: TextStyle(color: Colors.black),),
    //      shape: const RoundedRectangleBorder(
    //     borderRadius: BorderRadius.only(
    //     bottomLeft: Radius.circular(15),
    //     bottomRight: Radius.circular(15)
    //   )
    // ),
    //  ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height*0.1,
            ),
            Body(),
          ],
        ),
      ),
      //bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}
