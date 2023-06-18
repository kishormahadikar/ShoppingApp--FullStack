import 'package:flutter/material.dart';
import 'package:shopapp/screens/user_products_screen.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": Icons.add_box, "text": "Manage products","fn":(){}},
      {"icon": Icons.flash_on_rounded, "text": "Flash Deal","fn":(){}},
      {"icon": Icons.price_change, "text": "Bill","fn":(){}},
      {"icon": Icons.discount_rounded, "text": "Coupons","fn":(){}},
      {"icon": Icons.wallet_giftcard, "text": "Gift card","fn":(){}},
    ];
    return Padding(
      padding:const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          categories.length,
          (index) => CategoryCard(
            icon: categories[index]["icon"],
            text: categories[index]["text"],
            press: categories[index]["fn"],
          ),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key key,
    @required this.icon,
    @required this.text,
    @required this.press,
  }) : super(key: key);

  final IconData icon;
  final String text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: 55,
        child: Column(
          children: [
            Container(
              padding:const EdgeInsets.all(15),
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent[100].withOpacity(0.17),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Icon(icon),
            ),
           const SizedBox(height: 5),
            Text(text, textAlign: TextAlign.center,maxLines: 2,)
          ],
        ),
      ),
    );
  }
}
