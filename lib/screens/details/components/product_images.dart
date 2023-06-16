import 'package:flutter/material.dart';
import '../../../../constants.dart';
import '../../../../size_config.dart';

class ProductImages extends StatefulWidget {
  const ProductImages({Key key, @required this.imageUrl, @required this.id})
      : super(key: key);

  final String imageUrl;
  final String id;
  @override
  _ProductImagesState createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  int selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    return Image.network(widget.imageUrl);
  }

  GestureDetector buildSmallProductPreview(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedImage = index;
        });
      },
      child: AnimatedContainer(
        duration: defaultDuration,
        margin: EdgeInsets.only(right: 15),
        padding: EdgeInsets.all(8),
        height: 48, //c48
        width: 48, //c48r4
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: kPrimaryColor.withOpacity(selectedImage == index ? 1 : 0)),
        ),
        child: Image.network(widget.imageUrl),
      ),
    );
  }
}
