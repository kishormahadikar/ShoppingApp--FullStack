import 'package:flutter/material.dart';
import 'package:shopapp/providers/auth.dart';
import 'package:shopapp/providers/cart.dart';
import 'package:shopapp/providers/prodj.dart';
import '../../../components/default_button.dart';
import '../../../providers/Product.dart';
import '../../../size_config.dart';
import 'package:provider/provider.dart';
import 'color_dots.dart';
import 'product_description.dart';
import 'top_rounded_container.dart';
import 'product_images.dart';

class Body extends StatelessWidget {
  //final Product product;
  final String imageurl;
  final String id;
  final String title;
  bool isFavorite;
  final String description;
  final List<Color> colors;
  final double price;
  Function toggleFavoriteStatus;
  //final Prodj products;

  Body(
      {Key key,
      //@required this.product,
      // @required this.products,
      @required this.colors,
      @required this.price,
      @required this.description,
      @required this.imageurl,
      @required this.id,
      @required this.isFavorite,
      @required toggleFavoriteStatus,
      @required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cartData = Provider.of<Cart>(context);
    final authToken = Provider.of<Auth>(context).token;
    return ListView(
      children: [
        ProductImages(imageUrl: imageurl, id: id),
        TopRoundedContainer(
          color: Colors.white,
          child: Column(
            children: [
              ProductDescription(
                description: description,
                isFavorite: isFavorite,
                title: title,
                pressOnSeeMore: () {},
              ),
              TopRoundedContainer(
                color: Color(0xFFF6F7F9),
                child: Column(
                  children: [
                    ColorDots(colours: colors),
                    TopRoundedContainer(
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.10,
                          right: MediaQuery.of(context).size.width * 0.10,
                          // bottom: getProportionateScreenWidth(40),
                          // top: getProportionateScreenWidth(15),
                        ),
                        // child: DefaultButton(
                        //   text: "Add To Cart",
                        //   press: (() {
                        //     cartData.addItem(id, price, title);
                        //   }),
                        // ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 70,
              )
            ],
          ),
        ),
      ],
    );
  }
}
