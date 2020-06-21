import 'package:app_login/Screens/Welcome/welcome_screen.dart';
import 'package:app_login/contants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white
      ),
      home: WelcomeScreen()
    );
  }
}
