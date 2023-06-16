import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopapp/components/default_button.dart';
import 'package:shopapp/providers/auth.dart';
import 'package:shopapp/providers/cart.dart';
import 'package:shopapp/providers/products.dart';
import '../../../providers/Product.dart';
import 'components/body.dart';
import 'components/custom_app_bar.dart';

class DetailsScreen extends StatelessWidget {
  static const routeName = "/details";

  @override
  Widget build(BuildContext context) {
    final cartData = Provider.of<Cart>(context);
    final authToken = Provider.of<Auth>(context).token;
    // final ProductDetailsArguments agrs =
    //     ModalRoute.of(context).settings.arguments as ProductDetailsArguments;
    final productId = ModalRoute.of(context).settings.arguments as String;
    final args = Provider.of<Products>(context)
        .items
        .firstWhere((element) => element.id == productId);
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
    //     child: AppBar(
    //       title: Text(args.title),
    //       shape: const RoundedRectangleBorder(
    //     borderRadius: BorderRadius.only(
    //     bottomLeft: Radius.circular(15),
    //     bottomRight: Radius.circular(15)
    //   )
    // ),
    //     ),
       child: CustomAppBar(rating: 5),
      ),
      body: Body(
        colors: args.colors,
        description: args.description,
        id: args.id,
        imageurl: args.imageUrl,
        isFavorite: args.isFavorite,
        title: args.title,
        price: args.price,
        toggleFavoriteStatus: args.toggleFavoriteStatus,

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        height: 60,
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width/1.4,
        child: DefaultButton(
          text: "Add To Cart",
          color: Colors.deepPurple,
          press: (() {
            cartData.addItem(args.id, args.price, args.title,args.imageUrl);
          }),
        ),
      ),
    );
  }
}

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({@required this.product});
}
