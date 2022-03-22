import 'package:flutter/material.dart';
import 'package:up_todo_app/colors.dart';
import 'package:up_todo_app/screens/welcome_screen_3.dart';

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
        appBar: AppBar(
          backgroundColor: backgroundColor,
          elevation: 0,
          leading: BackButton(
            onPressed: () {
              Navigator.pop(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WelcomeScreenThird(),
                  ));
            },
          ),
        ),
        body: Column(
          children: [
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Manage your tasks',
                    style: TextStyle(
                        color: whiteColor,
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Center(
                child: Text(
              'You can easily manage all of your daily',
              style: TextStyle(
                  color: whiteColor,
                  fontSize: 16.5,
                  fontWeight: FontWeight.w500),
            )),
          ],
        ),
      ),
    );
  }
}
