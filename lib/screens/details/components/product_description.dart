import 'package:flutter/material.dart';
import 'package:shopapp/providers/auth.dart';
import 'package:shopapp/providers/cart.dart';
import 'package:shopapp/screens/details/components/descriptionText.dart';
import '../../../providers/Product.dart';
import 'package:provider/provider.dart';

class ProductDescription extends StatefulWidget {
  ProductDescription({
    Key key,
    @required this.title,
    @required this.isFavorite,
    @required this.description,
    this.pressOnSeeMore,
    @required toggleFavoriteStatus,
  }) : super(key: key);

  final String title;
  final String description;
  final bool isFavorite;
  final GestureTapCallback pressOnSeeMore;

  @override
  State<ProductDescription> createState() => _ProductDescriptionState();
}

class _ProductDescriptionState extends State<ProductDescription> {
  Function toggleFavoriteStatus;

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context, listen: false);
    final authData = Provider.of<Auth>(context, listen: false);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20), //c
          child: Text(
            widget.title,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
              padding: EdgeInsets.all(10), //c
              width: 64, //c
              decoration: BoxDecoration(
                color:
                    widget.isFavorite ? Color(0xFFFFE6E6) : Color(0xFFF5F6F9),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              child: GestureDetector(
                onTap: (() {
                  //   toggleFavoriteStatus(
                  //   authData.token,
                  //   authData.userId,)
                
                }),
                child: Icon(
                  widget.isFavorite
                      ? Icons.favorite
                      : Icons.favorite_border_rounded,
                  color:
                      widget.isFavorite ? Color(0xFFFF4848) : Color(0xFFDBDEE4),
                  //c
                ),
              )),
        ),
        Padding(
            padding: const EdgeInsets.only(
              left: 20, //c
              right: 64, //c
            ),
            child: DescriptionTextWidget(
              text: widget.description,
            )),
        // Padding(
        //   padding: const EdgeInsets.symmetric(
        //     horizontal: 20, //c
        //     vertical: 10,
        //   ),
        //   child: GestureDetector(
        //       onTap: () {
        //         // Text(
        //         //   description,
        //         //   maxLines: 10,
        //         // );
        //       },
        //       child: SizedBox()
        //       //  Row(
        //       //   children: [
        //       //     //DescriptionTextWidget(text: description),
        //       //     SizedBox(width: 5),
        //       //     Icon(
        //       //       Icons.arrow_forward_ios,
        //       //       size: 12,
        //       //       color: primaryColor,
        //       //     ),
        //       //   ],
        //       // ),
        //       ),
        // )
      ],
    );
  }
}
