import 'package:flutter/material.dart';
import '../size_config.dart';

class FormError extends StatelessWidget {
  const FormError({
    Key key,
    @required this.errors,
  }) : super(key: key);

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          errors.length, (index) => formErrorText(error: errors[index])),
    );
  }

  Row formErrorText({@required String error}) {
    return Row(
      children: [
        Image.network(
          "ahttps://w7.pngwing.com/pngs/558/606/png-transparent-error-icon.png",
          height: 10, //c
          width: 10, //c
        ),
        SizedBox(
          width: 10, //c
        ),
        Text(error),
      ],
    );
  }
}
