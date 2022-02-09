import 'package:flutter/material.dart';

class TextTwelveBold extends StatelessWidget {

  final String text;

  const TextTwelveBold({required this.text, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "$text",
      style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold
      ),
    );
  }
}
