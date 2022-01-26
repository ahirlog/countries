import 'package:flutter/material.dart';

class CustomRichText extends StatelessWidget {
  final String heading;
  final String value;
  const CustomRichText({Key? key, required this.heading, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(
      children: [
        TextSpan(text: '$heading:  ', style: TextStyle(fontSize: 16)),
        TextSpan(
            text: value,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16))
      ],
    ));
  }
}
