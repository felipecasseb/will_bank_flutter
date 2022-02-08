import 'package:flutter/material.dart';
import 'package:will_bank_flutter/theme/app_theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  void initializeSplash()async{
    try{
      await Future.delayed(Duration(seconds: 3));
      Navigator.pushReplacementNamed(context, "/login");
    } catch(e){
      print(e);
    }
  }

  @override
  void initState() {
    initializeSplash();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppTheme.colors.yellow,
        body: Container(
          child: Center(
              child: Image.asset("image/logo.png")
          ),
        )
    );
  }
}
