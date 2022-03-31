import 'package:flutter/material.dart';
import 'package:up_todo_app/colors.dart';
import 'package:up_todo_app/screens/welcome_screens/welcome_screen_3.dart';
import 'package:up_todo_app/screens/login_and_registration/login.dart';
import 'package:up_todo_app/screens/login_and_registration/registration.dart';

class LoginAndRegistrationScreeen extends StatefulWidget {
  const LoginAndRegistrationScreeen({Key? key}) : super(key: key);

  @override
  State<LoginAndRegistrationScreeen> createState() =>
      _LoginAndRegistrationScreeenState();
}

class _LoginAndRegistrationScreeenState
    extends State<LoginAndRegistrationScreeen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: backgroundColor),
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
        body: SingleChildScrollView(
          child: Column(
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
              const Center(
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
              const Center(
                  child: Text(
                'new account to continue',
                style: TextStyle(
                    color: Colors.white54,
                    fontWeight: FontWeight.w500,
                    fontSize: 16.5),
              )),
              const SizedBox(
                height: 450,
              ),
              Container(
                width: 300,
                height: 50,
                child: ElevatedButton(
                  child: const Text('NEXT'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ));
                  },
                  style: ElevatedButton.styleFrom(
                      primary: purpleColor,
                      textStyle: const TextStyle(
                          fontSize: 17, fontWeight: FontWeight.bold)),
                ),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
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
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegistrationScreen(),
                        ));
                  },
                  child: const Text(
                    'CREATE ACCOUNT',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
