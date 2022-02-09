import 'package:flutter/material.dart';
import 'package:will_bank_flutter/theme/app_theme.dart';

class ContainerCenter extends StatelessWidget {
  const ContainerCenter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppTheme.colors.grey,
          borderRadius: BorderRadius.circular(10)
      ),
      width: MediaQuery.of(context).size.width,
      height: 41,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text("Limite disponível do cartão", style: TextStyle(fontSize: 12),),
          ),
          Text("R\$ 0,00", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Icon(Icons.arrow_forward_ios_outlined, size: 12, color: Colors.black54,),
          )
        ],
      ),
    );
  }
}
