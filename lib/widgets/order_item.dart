import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../providers/orders.dart' as ord;

class OrderItem extends StatefulWidget {
  final ord.OrderItem order;

  OrderItem(this.order);

  @override
  _OrderItemState createState() => _OrderItemState();
}

class _OrderItemState extends State<OrderItem> {
  var _expanded = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        margin:const  EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text('\$${widget.order.amount}'),
              subtitle: Text(
                DateFormat('dd/MM/yyyy hh:mm').format(widget.order.dateTime),
              ),
              trailing: IconButton(
                icon: Icon(_expanded ? Icons.expand_less : Icons.expand_more),
                onPressed: () {
                  setState(() {
                    _expanded = !_expanded;
                  });
                },
              ),
            ),
            if (_expanded)
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
                height: 300 ,
               // height: min(widget.order.products.length * 20.0 + 100, 100),
                child: ListView(
                  children: widget.order.products
                      .map(
                        (prod) => Column(
                          children: [
                            Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      prod.title,
                                      style:const  TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      '${prod.quantity}x \$${prod.price}',
                                      style: const TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                      ),
                                    ),
                                        
                                  ],
                                ),
                                const SizedBox(height: 10,),
                                Container(
                                      child: Image.network('https://static.vecteezy.com/system/resources/previews/021/433/535/original/progress-bar-of-product-delivery-status-concept-illustration-flat-design-eps10-modern-graphic-element-for-landing-page-empty-state-ui-infographic-icon-vector.jpg',
                                      fit: BoxFit.fill),
                                    ),
                                    const SizedBox(height: 10,),
                          ],
                        ),
                      )
                      .toList(),
                ),
              )
          ],
        ),
      ),
    );
  }
}
