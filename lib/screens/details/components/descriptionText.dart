import 'package:flutter/material.dart';


class DescriptionTextWidget extends StatefulWidget {
  final String text;

  DescriptionTextWidget({@required this.text});

  @override
  _DescriptionTextWidgetState createState() => new _DescriptionTextWidgetState();
}

class _DescriptionTextWidgetState extends State<DescriptionTextWidget> {
  String firstHalf;
  String secondHalf;

  bool flag = true;

  @override
  void initState() {
    super.initState();

    if (widget.text.length > 150) {
      firstHalf = widget.text.substring(0, 150);
      secondHalf = widget.text.substring(150, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return  Container(
      //padding:  EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: secondHalf.isEmpty
          ?  Text(firstHalf,style: TextStyle(
            fontSize: 17
          ),)
          :  Column(
              children: <Widget>[
                 Text(flag ? (firstHalf + "...") : (firstHalf + secondHalf),style: TextStyle(
            fontSize: 17
          ),),
                 InkWell(
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                       Text(
                        flag ? "show more" : "show less",
                        style:  TextStyle(color: Colors.deepPurple,
                        fontSize: 15),
                      ),
                    ],
                  ),
                  onTap: () {
                    setState(() {
                      flag = !flag;
                    });
                  },
                ),
              ]
            ),
    );
  }
}