import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopapp/screens/custom__Cartbar.dart';
import 'package:shopapp/widgets/check_out_card.dart';
import '../providers/cart.dart' show Cart;
import '../widgets/cart_item.dart';
import '../providers/orders.dart';

class CartScreen extends StatelessWidget {
  static const routeName = '/cart';
  final String pagenane = 'My cart';
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: CustomBar(pagename: pagenane,itemC: cart.itemCount),
      ),
      //   AppBar(
      //     title: const Text('Your Cart'),
      //     shape: const RoundedRectangleBorder(
      //     borderRadius: BorderRadius.only(
      //     bottomLeft: Radius.circular(15),
      //     bottomRight: Radius.circular(15)
      //   )
      // ),
      //   ),
      body: Column(
        children: <Widget>[
          
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: cart.items.length,
              itemBuilder: (ctx, i) => CartItem(
                cart.items.values.toList()[i].id,
                cart.items.keys.toList()[i],
                cart.items.values.toList()[i].price,
                cart.items.values.toList()[i].quantity,
                cart.items.values.toList()[i].title,
                cart.items.values.toList()[i].imageUrl,
              ),
            ),
          ),
          CheckoutCard(totalVal: cart.totalAmount,
          cart: cart,
           ),
          SizedBox(height: 20,)
        ],
        
      ),
    );
  }
}


