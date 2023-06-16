import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopapp/providers/cart.dart';
import '../components/orderButton.dart';
import '../../../constants.dart';

class CheckoutCard extends StatefulWidget {
  final double totalVal;
  final Cart cart;
  CheckoutCard({@required this.totalVal,@required this.cart});

  @override
  State<CheckoutCard> createState() => _CheckoutCardState();
}

class _CheckoutCardState extends State<CheckoutCard> {
  bool shoulShowInput = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 30,
      ),
      // height: 174,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, -15),
              blurRadius: 20,
              color: Colors.black.withOpacity(0.2))
        ],
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Color(0xFFF5F6F9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(Icons.receipt),
                ),
                const Spacer(),
                Row(
                  children: [
                TextButton(
                   onPressed: () {
              // const TextFieldInput();

              setState(() {
                shoulShowInput = true;
              });
            },
                child: const Text("Add voucher code",
                style: TextStyle(
                  fontSize: 14
                ),)),
                const SizedBox(width: 10),
                 const Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                  color: Colors.black,
                ),
                 shoulShowInput==true?
                const SizedBox(
                  height: 60,
                  width: 80,
                  child: TextField(
                    maxLines: 1,
                    maxLength: 7,
                  ),
                )
                :Container(),
                
                  ],
                ),
                // Text("Add voucher code"),
                // const SizedBox(width: 10),
                // Icon(
                //   Icons.arrow_forward_ios,
                //   size: 12,
                //   color: kTextColor,
                // )
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(
                    text: "Total:\n",
                    children: [
                      TextSpan(
                        text: widget.totalVal == null ? '\$0.0' : "\$${widget.totalVal}",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 190, child: OrderButton(cart: widget.cart,vouc: shoulShowInput,)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
