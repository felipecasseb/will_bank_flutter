import 'package:flutter/material.dart';
import 'package:will_bank_flutter/theme/app_theme.dart';

class CpfPage extends StatelessWidget {
  const CpfPage({Key? key}) : super(key: key);

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
              "Olá!",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, bottom: 19),
            child: Text(
                "Informe seu CPF para gente começar.",
              style: TextStyle(fontSize: 14),
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child:TextFormField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                labelText: "CPF",
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
          Padding(padding: EdgeInsets.only(left: 42),
          child: Text("Digite apenas números",
          style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch ,
            children: [
              Padding(padding: EdgeInsets.only(left: 50, right: 50, top: 80, bottom: 20),
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.pushReplacementNamed(context, "/password");
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
