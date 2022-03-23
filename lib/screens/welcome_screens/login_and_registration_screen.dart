import 'package:flutter/material.dart';
import 'package:up_todo_app/colors.dart';
import 'package:up_todo_app/screens/welcome_screens/welcome_screen_3.dart';

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
                    'Welcome To UpTodo',
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
              'Please login to your account or create',
              style: TextStyle(
                  color: Colors.white54,
                  fontSize: 16.5,
                  fontWeight: FontWeight.w500),
            )),
            const SizedBox(
              height: 5,
            ),
            Center(
                child: Text(
              'new account to continue',
              style: TextStyle(
                  color: Colors.white54,
                  fontSize: 16.5,
                  fontWeight: FontWeight.w500),
            )),
            const SizedBox(
              height: 450,
            ),
            Container(
              width: 300,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
              ),
              child: ElevatedButton(
                child: const Text('NEXT'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => WelcomeScreenThird(),
                      ));
                },
                style: ElevatedButton.styleFrom(
                    primary: purpleColor,
                    textStyle: const TextStyle(
                        fontSize: 17, fontWeight: FontWeight.bold)),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              width: 300,
              height: 50,
              child: OutlinedButton(
                style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                    alignment: Alignment.center,
                    side: MaterialStateProperty.all(
                        const BorderSide(width: 1, color: Color(0xFF8D70FF))),
                    padding: MaterialStateProperty.all(const EdgeInsets.only(
                        right: 55, left: 55, top: 12.5, bottom: 12.5)),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.transparent),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)))),
                onPressed: () {},
                child: Text(
                  'CREATE ACCOUNT',
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
