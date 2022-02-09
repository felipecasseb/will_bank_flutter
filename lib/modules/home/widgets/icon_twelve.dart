import 'package:flutter/material.dart';

class IconTwelve extends StatelessWidget {

  final IconData icon;

  const IconTwelve({required this.icon, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: 12,
      color: Colors.black54,
    );
  }
}
