import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopapp/screens/details/details_screen.dart';
import '../providers/product.dart';
import '../providers/cart.dart';
import '../providers/auth.dart';

class ProductItem extends StatelessWidget {
  // final String id;
 // final String prodid;
  // final String imageUrl;

  //ProductItem(this.prodid);

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context, listen: false);
    final cart = Provider.of<Cart>(context, listen: false);
    final authData = Provider.of<Auth>(context, listen: false);
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        footer: GridTileBar(

         // backgroundColor: Colors.black87,
          leading: Padding(
           padding: const EdgeInsets.only(top:20.0),
            child: Consumer<Product>(
              builder: (ctx, product, _) => IconButton(
                    icon: Icon(
                      product.isFavorite ? Icons.favorite : Icons.favorite_border,
                      color: Colors.red,
                    ),
                    color: Theme.of(context).accentColor,
                    onPressed: () {
                      product.toggleFavoriteStatus(
                        authData.token,
                        authData.userId,
                      );
                    },
                  ),
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(top:18.0),
            child: Text(
              product.title,
              style: TextStyle(color: Colors.black),
              maxLines: 2,
              textAlign: TextAlign.center,
              softWrap: true,
              
            ),
          ),
          trailing: Padding(
            padding: const EdgeInsets.only(top:20.0),
            child: IconButton(
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.blue,
              ),
              onPressed: () {
                cart.addItem(product.id, product.price, product.title,product.imageUrl);
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text(
                      'Added item to cart!',
                    ),
                    duration: Duration(seconds: 2),
                    action: SnackBarAction(
                      label: 'UNDO',
                      onPressed: () {
                        cart.removeSingleItem(product.id);
                      },
                    ),
                  ),
                );
              },
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(
              DetailsScreen.routeName,
              arguments: product.id,
            );
          },
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:shopapp/screens/details/details_screen.dart';

// import '../screens/product_detail_screen.dart';
// import '../providers/product.dart';
// import '../providers/cart.dart';
// import '../providers/auth.dart';

// class ProductItem extends StatelessWidget {
//   // final String id;
//   // final String title;
//   // final String imageUrl;

//   // ProductItem(this.id, this.title, this.imageUrl);

//   @override
//   Widget build(BuildContext context) {
//     final product = Provider.of<Product>(context, listen: false);
//     final cart = Provider.of<Cart>(context, listen: false);
//     final authData = Provider.of<Auth>(context, listen: false);
//     return ClipRRect(
//       borderRadius: BorderRadius.circular(10),
//       child: GridTile(
//         footer: GridTileBar(
//           backgroundColor: Colors.black87,
//           leading: Consumer<Product>(
//             builder: (ctx, product, _) => IconButton(
//                   icon: Icon(
//                     product.isFavorite ? Icons.favorite : Icons.favorite_border,
//                     color: Colors.red,
//                   ),
//                   color: Theme.of(context).accentColor,
//                   onPressed: () {
//                     product.toggleFavoriteStatus(
//                       authData.token,
//                       authData.userId,
//                     );
//                   },
//                 ),
//           ),
//           title: Text(
//             product.title,
//             textAlign: TextAlign.center,
//             softWrap: true,
            
//           ),
//           trailing: IconButton(
//             icon: const Icon(
//               Icons.shopping_cart,
//               color: Colors.blue,
//             ),
//             onPressed: () {
//               cart.addItem(product.id, product.price, product.title,product.imageUrl);
//               ScaffoldMessenger.of(context).hideCurrentSnackBar();
//               ScaffoldMessenger.of(context).showSnackBar(
//                 SnackBar(
//                   content: const Text(
//                     'Added item to cart!',
//                   ),
//                   duration: Duration(seconds: 2),
//                   action: SnackBarAction(
//                     label: 'UNDO',
//                     onPressed: () {
//                       cart.removeSingleItem(product.id);
//                     },
//                   ),
//                 ),
//               );
//             },
//             color: Theme.of(context).accentColor,
//           ),
//         ),
//         child: GestureDetector(
//           onTap: () {
//             Navigator.of(context).pushNamed(
//               DetailsScreen.routeName,
//               arguments: product.id,
//             );
//           },
//           child: Image.network(
//             product.imageUrl,
//             fit: BoxFit.cover,
//           ),
//         ),
//       ),
//     );
//   }
// }
