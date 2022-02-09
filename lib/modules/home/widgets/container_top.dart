import 'package:flutter/material.dart';
import 'package:will_bank_flutter/modules/home/widgets/text_twelve_black.dart';
import 'package:will_bank_flutter/modules/home/widgets/text_twelve_bold.dart';
import 'package:will_bank_flutter/theme/app_theme.dart';

import 'icon_twelve.dart';

class ContainerTop extends StatelessWidget {

  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String text5;

  const ContainerTop({
    Key? key,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
    required this.text5,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppTheme.colors.grey,
          borderRadius: BorderRadius.circular(10)
      ),
      width: 156,
      height: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 11),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextTwelveBlack(text: "$text1"),
                IconTwelve(icon: Icons.arrow_forward_ios_outlined),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 2),
            child: TextTwelveBlack(text: "$text2",),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 16, bottom: 2),
              child: TextTwelveBold(text: "$text3",)
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text("$text4", style: TextStyle(fontSize: 12, color: AppTheme.colors.green),),
              ),
              TextTwelveBlack(text: "$text5")
            ],
          )
        ],
      ),
    );
  }
}
