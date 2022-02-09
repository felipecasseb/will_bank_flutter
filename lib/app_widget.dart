import 'package:flutter/material.dart';
import 'package:will_bank_flutter/modules/home/home_screen.dart';
import 'package:will_bank_flutter/modules/login/cpf_page.dart';
import 'package:will_bank_flutter/modules/login/login_page.dart';
import 'package:will_bank_flutter/modules/login/password_page.dart';
import 'package:will_bank_flutter/modules/splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    title: "Will Bank",
      initialRoute: "/splash",
      routes: {
        "/splash" : (context) => SplashPage(),
        "/login" : (context) => LoginPage(),
        "/cpf" : (context) => CpfPage(),
        "/password" : (context) => PasswordPage(),
        "/homeScreen" : (context) => HomeScreen()
      },
    );
  }
}
