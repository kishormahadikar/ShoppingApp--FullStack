import 'package:flutter/material.dart';
import 'package:shopapp/components/default_button.dart';
import 'package:shopapp/components/default_buttonMod.dart';
import 'package:shopapp/providers/cart.dart';
import 'package:provider/provider.dart';
import 'package:shopapp/providers/orders.dart';

class OrderButton extends StatefulWidget {
  OrderButton({Key key, @required this.cart, @required this.vouc});
  bool vouc;
  final Cart cart;

  @override
  _OrderButtonState createState() => _OrderButtonState();
}

class _OrderButtonState extends State<OrderButton> {
  var _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return DefaultButtonMod(
      color: Colors.deepPurple,
      press: (widget.cart.totalAmount <= 0 || _isLoading)
          ? null
          : () async {
              setState(() {
               // widget.vouc = false;
                _isLoading = true;
              });
              await Provider.of<Orders>(context, listen: false).addOrder(
                widget.cart.items.values.toList(),
                widget.cart.totalAmount,
              );
              setState(() {
                _isLoading = false;
                //widget.vouc = false;
              });
              widget.cart.clear();
            },
      child: _isLoading
          ? CircularProgressIndicator()
          : Text(
              'ORDER NOW',
              style: TextStyle(
                fontSize: 18, //c
                color: Colors.white,
              ),
            ),
    );
  }
}
