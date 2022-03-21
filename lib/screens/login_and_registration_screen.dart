import 'package:flutter/material.dart';
import 'package:up_todo_app/colors.dart';

class LoginAndRegistrationScreeen extends StatefulWidget {
  LoginAndRegistrationScreeen({Key? key}) : super(key: key);

  @override
  State<LoginAndRegistrationScreeen> createState() =>
      _LoginAndRegistrationScreeenState();
}

class _LoginAndRegistrationScreeenState
    extends State<LoginAndRegistrationScreeen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: new ThemeData(scaffoldBackgroundColor: backgroundColor),
        home: Scaffold(
          body: Center(
              child: Text('Hello world', style: TextStyle(color: whiteColor))),
        ));
  }
}
