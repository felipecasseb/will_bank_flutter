import 'package:flutter/material.dart';

class ButtomMenuBottom extends StatelessWidget {

  final String image;
  final String text;

  const ButtomMenuBottom({
    Key? key,
    required this.text,
    required this.image
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 50,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("$image"),
          SizedBox(height: 8,),
          Text("$text", style: TextStyle(fontSize: 12),)
        ],
      ),
    );
  }
}
