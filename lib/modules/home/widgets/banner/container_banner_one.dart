import 'package:flutter/material.dart';
import 'package:will_bank_flutter/theme/app_theme.dart';

class ContainerBannerOne extends StatelessWidget {
  const ContainerBannerOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: AppTheme.colors.grey,
            borderRadius: BorderRadius.circular(10)
        ),
        width: MediaQuery.of(context).size.width,
        height: 100,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 11),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Gerenciar cartões", style: TextStyle(fontSize: 12,),),
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Icon(Icons.arrow_forward_ios_outlined, size: 12, color: Colors.black54,),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 27),
              child: Row(
                children: [
                  Container(
                    height: 9,
                    width: 9,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppTheme.colors.green
                    ),
                  ),
                  SizedBox(width: 20,),
                  Text("Virtual", style: TextStyle(fontSize: 12,),),
                  SizedBox(width: 20,),
                  Text("Liberado para compras", style: TextStyle(fontSize: 12,),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 4),
              child: Row(
                children: [
                  Container(
                    height: 9,
                    width: 9,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppTheme.colors.green
                    ),
                  ),
                  SizedBox(width: 20,),
                  Text("Físico", style: TextStyle(fontSize: 12,),),
                  SizedBox(width: 20,),
                  Text(" Liberado para compras", style: TextStyle(fontSize: 12,),),
                ],
              ),
            )
          ],
        )
    );
  }
}
