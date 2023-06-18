import 'package:flutter/material.dart';
import '../../../components/rounded_icon_btn.dart';

int i = 1;

class ColorDots extends StatefulWidget {
  ColorDots({
    Key key,
    @required this.colours,
  }) : super(key: key);

  final List<Color> colours;

  @override
  State<ColorDots> createState() => _ColorDotsState();
}

class _ColorDotsState extends State<ColorDots> {
  List<Color> colors = <Color>[
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.orange
  ];

  @override
  Widget build(BuildContext context) {
    // Now this is fixed and only for demo
    int selectedColor = 3;
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20 //c20
            ),
        child: Row(
              children: [
                ...List.generate(
                  colors.length,
                  (index) => ColorDot(
                    color: colors[index],
                    isSelected: index == selectedColor,
                  ),
                ),
                Spacer(),
                RoundedIconBtn(
                  icon: Icons.remove,
                  press: () {
                    i > 1
                        ? setState(() {
                            i -= 1;
                          })
                        : () {};
                  },
                ),
                const SizedBox(width: 10),
                Text(i.toString()),
                const SizedBox(width: 10),
                RoundedIconBtn(
                  icon: Icons.add,
                  showShadow: true,
                  press: () {
                    i < 10
                        ? setState(() {
                            i += 1;
                          })
                        : () {};
                  },
                ),
              ],
            
        ));
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key key,
    @required this.color,
    this.isSelected = false,
  }) : super(key: key);

  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 2),
      padding: EdgeInsets.all(8),
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(
            color: isSelected ? Colors.deepPurple : Colors.transparent),
        shape: BoxShape.circle,
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
