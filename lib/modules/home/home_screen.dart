import 'package:flutter/material.dart';
import 'package:will_bank_flutter/modules/home/widgets/banner/banner_three.dart';
import 'package:will_bank_flutter/modules/home/widgets/banner/banner_two.dart';
import 'package:will_bank_flutter/modules/home/widgets/banner/container_center.dart';
import 'package:will_bank_flutter/modules/home/widgets/banner/container_banner_one.dart';
import 'package:will_bank_flutter/modules/home/widgets/banner/container_top.dart';
import 'package:will_bank_flutter/modules/home/widgets/buttom/buttom_menu_bottom.dart';
import 'package:will_bank_flutter/theme/app_theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 440,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: AppTheme.colors.yellow,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(80),
                        bottomRight: Radius.circular(80)
                    ),
                  ),
                  child:  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 51, left: 16),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.asset("image/perfil.jpg", height: 48, width: 48,),
                            ),
                          ),
                          SizedBox(width: 16,),
                          Padding(
                            padding: const EdgeInsets.only(top: 51),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Olá, Felipe!", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                                Text("Ver perfil", style: TextStyle(fontSize: 14),)
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 51, left: 153),
                            child: Icon(Icons.remove_red_eye),
                          )
                        ],
                      ),
                      SizedBox(height: 30,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          children: [

                            //conta digital
                            ContainerTop(
                                text1: "Conta digital",
                                text2: "Saldo disponível",
                                text3: "R\$ 20,00",
                                text4: "Rende 110% ",
                                text5: "do CDI"
                            ),
                            SizedBox(width: 12,),

                            //cartao de credito
                            ContainerTop(
                                text1: "Cartão de crédito",
                                text2: "Fatura aberta",
                                text3: "R\$ 0,00",
                                text4: "Fecha em 04/02",
                                text5: ""
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15, left: 16, right: 16),
                        child: ContainerCenter(),
                      )
                    ],
                  ),
                ),
                Positioned(    // To take AppBar Size only
                  top: 340.0,
                  left: 16.0,
                  right: 16.0,
                  child: ContainerBannerOne(),
                )
              ],
            ),
            BannerTwo(),
            BannerThree(),
            Padding(padding: EdgeInsets.only(top: 32,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ButtomMenuBottom(
                      text: "Central Pix",
                      image: "image/pix.png"
                  ),
                  ButtomMenuBottom(
                      text: "Transferir",
                      image: "image/depositar.png"
                  ),
                  Container(
                    width: 80,
                    height: 50,
                    child:  ButtomMenuBottom(
                        text: "Cartão Virtual",
                        image: "image/cartao.png"
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
