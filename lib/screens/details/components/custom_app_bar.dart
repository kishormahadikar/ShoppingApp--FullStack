import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../../size_config.dart';

class CustomAppBar extends StatelessWidget {
  final double rating;

  CustomAppBar({@required this.rating});

  @override
  // AppBar().preferredSize.height provide us the height that appy on our app bar
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal:20,
            ),//c),
        child: Column(
          children: [
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(
                  height: 40,//c,
                  width: 40 ,//c40,
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
                    child: const Icon(Icons.arrow_back_ios_sharp,
                    color: Colors.deepPurpleAccent,
                    size: 30,
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: SizedBox(
                    height: 29,
                    child: Row(
                      children: [
                        Text(
                          "$rating",
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(width: 5),
                        Icon(Icons.star,
                        color: Colors.yellow[700],),
                      ],
                    ),
                  ),
                )
              ],
            ),
            //SizedBox(height: 10,)
          ],
        ),
      ),
    );
  }
}
