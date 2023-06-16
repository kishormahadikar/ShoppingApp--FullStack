import 'dart:ui';

import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../../size_config.dart';

class CustomBar extends StatelessWidget {
   String pagename;

  CustomBar({
    @required this.pagename});

  @override
  // AppBar().preferredSize.height provide us the height that appy on our app bar
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ), //c),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  height: 40, //c,
                  width: 40, //c40,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(60),
                      ),
                      primary: kPrimaryColor,
                      backgroundColor: Colors.white,
                      padding: EdgeInsets.zero,
                    ),
                    onPressed: () => Navigator.pop(context),
                    child: const Icon(
                      Icons.arrow_back_ios_sharp,
                      color: Colors.deepPurpleAccent,
                      size: 30,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(pagename,
                  style:const TextStyle(
                    color: Colors.deepPurpleAccent,
                    fontSize: 25,
                    fontFamily: 'Muli',
                  ),
                  ),
                )
                // Container(
                //   padding:
                //       const EdgeInsets.symmetric(horizontal: 1, vertical: 1),
                //   decoration: BoxDecoration(
                //     color: Colors.white,
                //     borderRadius: BorderRadius.circular(14),
                //   ),
                //   child: SizedBox(height: 29, child: Text(pagename)),
                // )
              ],
            ),
            //SizedBox(height: 10,)
          ],
        ),
      ),
    );
  }
}
