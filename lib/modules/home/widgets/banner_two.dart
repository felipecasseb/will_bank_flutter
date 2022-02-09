import 'package:flutter/material.dart';
import 'package:will_bank_flutter/theme/app_theme.dart';

class BannerTwo extends StatelessWidget {
  const BannerTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 15),
          child: Container(
            decoration: BoxDecoration(
                color: AppTheme.colors.grey,
                borderRadius: BorderRadius.circular(10)
            ),
            width: MediaQuery.of(context).size.width,
            height: 100,
          ),
        ),
        Positioned(
            top: 5.0,
            left: 36.0,
            //right: 16.0,
            child: Container(
                width: 44,
                height: 22,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppTheme.colors.green
                ),
                child: Center(
                  child: Text("Novo", style: TextStyle(color: Colors.white, fontSize: 12),),
                )
            )
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 42),
              child: Image.asset("image/pig.png"),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Sobrou dindim? Comece a investir",
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Icon(Icons.arrow_forward_ios_outlined, size: 12, color: Colors.black54,),
                    ),
                  ],
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Wrap(
                      children: [
                        Container(
                          width: 197,
                          height: 28,
                          child: Text(
                            "Invista o valor que quiser e escolha o dia para retirar a grana que rendeu.",
                            style: TextStyle(color: Colors.black, fontSize: 12),
                          ),
                        )
                      ],
                    )
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
