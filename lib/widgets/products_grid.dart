import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/products.dart';
import './product_item.dart';

class ProductsGrid extends StatelessWidget {
  // final bool showFavs;

  // ProductsGrid(this.showFavs);

  @override
  Widget build(BuildContext context) {
    final bool showFavs=false;
    final productsData = Provider.of<Products>(context);
    final products = showFavs ? productsData.favoriteItems : productsData.items;
    return Container(
      height: MediaQuery.of(context).size.height*0.45,
      width: MediaQuery.of(context).size.width,
      child: GridView.builder(
        
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(10.0),
        itemCount: products.length,
        itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
              // builder: (c) => products[i],
              value: products[i],
              child: 
              //ProductCard(product: products[i], prodid: products[i].id)
              ProductItem()
              //     // products[i].id,
              //     // products[i].title,
              //     // products[i].imageUrl,
              //     ),
            ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
      ),
    );
  }
}
