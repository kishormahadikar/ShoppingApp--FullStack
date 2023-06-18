import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopapp/providers/products.dart';
import 'package:shopapp/widgets/product_item.dart';
import 'package:shopapp/widgets/products_grid.dart';
import 'section_title.dart';

class PopularProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final items = Provider.of<Products>(context).cat;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SectionTitle(title: "Popular Products", press: () {}),
        ),
        SizedBox(height: 20),
        ProductsGrid()
      ],
    );
  }
}
