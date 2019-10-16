import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String passedText;

  MyText(this.passedText);

  @override
  Widget build(BuildContext context) {
    return Text(passedText);
  }
}
