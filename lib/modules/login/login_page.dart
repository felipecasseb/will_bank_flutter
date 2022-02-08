import 'package:flutter/material.dart';
import 'package:will_bank_flutter/theme/app_theme.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 74),
            child: Center(
              child: Image.asset("image/logoTransparent.png"),
            ),
          ),
          Center(
            child: Image.asset("image/login.png"),
          ),
          Center(
            child: Text("Olá! Sou um banco digital,\n mas pode me chamar de Will.",
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16, color: Colors.black),),
          ),
          Container(
              decoration: BoxDecoration(
                color: AppTheme.colors.yellow,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(180),
                  topLeft: Radius.circular(180)
                ),
              ),
            height: 240,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: (){
                    Navigator.pushReplacementNamed(context, "/cpf");
                  },
                  child: Text("Já sou cliente",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14, color: Colors.black),),
                ),
                Padding(padding: EdgeInsets.only(left: 32, right: 32, top: 40, bottom: 20),
                  child: ElevatedButton(
                    onPressed: (){},
                    child: Text("Fazer cadastro"),
                    style: ElevatedButton.styleFrom(shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(20.0),
                    ),
                        primary: AppTheme.colors.brow),
                  )
                )
              ],
            )
          )
        ],
      ),
    );
  }
}
