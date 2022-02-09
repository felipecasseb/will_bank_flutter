import 'package:flutter/material.dart';

class TextTwelveBlack extends StatelessWidget {

  final String text;

  const TextTwelveBlack({required this.text, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "$text",
      style: TextStyle(
          fontSize: 12,
          color: Colors.black
      ),
    );
  }
}
