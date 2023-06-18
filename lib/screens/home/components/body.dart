import 'package:flutter/material.dart';
import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';
import 'popular_product.dart';
import 'special_offers.dart';

class Body extends StatelessWidget {
   const Body({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(height: 20),
          HomeHeader(),
          SizedBox(
            height: MediaQuery.of(context).size.height*0.77,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 10),
                  DiscountBanner(),
                  Categories(),
                  SpecialOffers(),
                  SizedBox(height: 30),
                  PopularProducts(),
                  SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
