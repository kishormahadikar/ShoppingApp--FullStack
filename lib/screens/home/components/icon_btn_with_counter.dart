import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopapp/providers/cart.dart';
import '../../../constants.dart';


class IconBtnWithCounter extends StatefulWidget {
  const IconBtnWithCounter({
    Key key,
    @required this.iconn,
    this.numOfitem = 0,
    @required this.press,
  }) : super(key: key);

  final IconData iconn;
  final int numOfitem;
  final GestureTapCallback press;

  @override
  State<IconBtnWithCounter> createState() => _IconBtnWithCounterState();
}

class _IconBtnWithCounterState extends State<IconBtnWithCounter> {
  @override
  
  Widget build(BuildContext context) {
    int totalItems=Provider.of<Cart>(context).itemCount;
    return InkWell(
      borderRadius: BorderRadius.circular(100),
      onTap: widget.press,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: EdgeInsets.all(12),
            height: 46,
            width: 46,
            decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(widget.iconn),
          ),
          
            Positioned(
              top: -3,
              right: 0,
              child: Container(
                height: 16,
                width: 16,
                decoration: BoxDecoration(
                  color: Color(0xFFFF4848),
                  shape: BoxShape.circle,
                  border: Border.all(width: 1.5, color: Colors.white),
                ),
                child: Center(
                  child: Text(
                    "${totalItems}",
                    style: const TextStyle(
                      fontSize: 10,
                      height: 1,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
