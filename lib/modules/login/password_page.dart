import 'package:flutter/material.dart';
import 'package:will_bank_flutter/theme/app_theme.dart';

class PasswordPage extends StatelessWidget {
  const PasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 74, left: 20, bottom: 40),
            child:  Image.asset("image/logoTransparent.png"),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, bottom: 8),
            child: Text(
              "Agora a sua senha",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, bottom: 27),
            child: Text(
              "Digite sua senha para continuar",
              style: TextStyle(fontSize: 14),
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 20),
            child:TextFormField(
              keyboardType: TextInputType.number,
              obscureText: true,
              decoration: InputDecoration(
                suffix: Text("Esqueceu?", style: TextStyle(decoration: TextDecoration.underline),),
                labelText: "Senha",
                fillColor: Colors.black,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    color: AppTheme.colors.yellow,
                    width: 2.5,
                  ),
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch ,
            children: [
              Padding(padding: EdgeInsets.only(top: 80, bottom: 8),
              child: Center(
                child: Text(
                    "Acessar outra conta",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
                  ),
              Padding(padding: EdgeInsets.only(left: 50, right: 50, bottom: 20),
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.pushReplacementNamed(context, "/homeScreen");
                    },
                    child: Text("Continuar", style: TextStyle(color: Colors.black54),),
                    style: ElevatedButton.styleFrom(shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(20.0),
                    ),
                        primary: AppTheme.colors.yellow),
                  )
              )
            ],
          )
        ],
      ),
    );
  }
}
