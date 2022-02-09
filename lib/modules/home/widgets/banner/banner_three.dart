import 'package:flutter/material.dart';
import 'package:will_bank_flutter/theme/app_theme.dart';

class BannerThree extends StatelessWidget {
  const BannerThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
      child: Container(
        decoration: BoxDecoration(
            color: AppTheme.colors.grey,
            borderRadius: BorderRadius.circular(10)
        ),
        width: MediaQuery.of(context).size.width,
        height: 100,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 20),
                  child: Text(
                    "Indique seus amigos",
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 16, top: 8),
                    child: Wrap(
                      children: [
                        Container(
                          width: 111,
                          height: 42,
                          child: Text(
                            "assim eles têm mais chance de serem aprovados!",
                            style: TextStyle(color: Colors.black, fontSize: 12),
                          ),
                        )
                      ],
                    )
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, top: 5, bottom: 2),
              child: Image.asset("image/band.png"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Icon(Icons.arrow_forward_ios_outlined, size: 12, color: Colors.black54,),
            ),
          ],
        ),
      ),
    );
  }
}
