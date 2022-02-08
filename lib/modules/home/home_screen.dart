import 'package:flutter/material.dart';
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
                            padding: const EdgeInsets.only(top: 81, left: 16),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.asset("image/perfil.jpg", height: 48, width: 48,),
                            ),
                          ),
                          SizedBox(width: 16,),
                          Padding(
                            padding: const EdgeInsets.only(top: 81),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Olá, Felipe!", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                                Text("Ver perfil", style: TextStyle(fontSize: 14),)
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 81, left: 153),
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
                            Container(
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
                                        Text("Conta digital", style: TextStyle(fontSize: 12, color: Colors.black),),
                                        Icon(Icons.arrow_forward_ios_outlined, size: 12, color: Colors.black54,)
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 20,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 16, bottom: 2),
                                    child: Text("Saldo disponível", style: TextStyle(fontSize: 12, color: Colors.black),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 16, bottom: 2),
                                    child: Text("R\$ 20,00", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 16),
                                        child: Text("Rende 110% ", style: TextStyle(fontSize: 12, color: AppTheme.colors.green),),
                                      ),
                                      Text("do CDI", style: TextStyle(fontSize: 12, color: Colors.black),),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(width: 12,),

                            //cartao de credito
                            Container(
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
                                        Text("Cartão de crédito", style: TextStyle(fontSize: 12, color: Colors.black),),
                                        Icon(Icons.arrow_forward_ios_outlined, size: 12, color: Colors.black54,)
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 20,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 16, bottom: 2),
                                    child: Text("Fatura aberta", style: TextStyle(fontSize: 12, color: Colors.black),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 16, bottom: 2),
                                    child: Text("R\$ 0,00", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 16),
                                        child: Text("Fecha em 04/02", style: TextStyle(fontSize: 12, color: AppTheme.colors.green),),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15, left: 16, right: 16),
                        child: Container(
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
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(    // To take AppBar Size only
                  top: 340.0,
                  left: 16.0,
                  right: 16.0,
                  child: Container(
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
                  )
                )
              ],
            ),
            Stack(
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
            ),
            Padding(
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
            ),
            Padding(padding: EdgeInsets.only(top: 52,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 80,
                    height: 50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("image/pix.png"),
                        SizedBox(height: 8,),
                        Text("Central Pix", style: TextStyle(fontSize: 12),)
                      ],
                    ),
                  ),
                  Container(
                    width: 80,
                    height: 50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("image/depositar.png"),
                        SizedBox(height: 8,),
                        Text("Transferir", style: TextStyle(fontSize: 12),)
                      ],
                    ),
                  ),
                  Container(
                    width: 80,
                    height: 50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("image/cartao.png"),
                        SizedBox(height: 8,),
                        Text("Cartão virtual", style: TextStyle(fontSize: 12),)
                      ],
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
