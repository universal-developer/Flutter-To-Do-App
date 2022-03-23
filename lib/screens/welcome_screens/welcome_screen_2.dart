import 'package:flutter/material.dart';
import 'package:up_todo_app/colors.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:up_todo_app/screens/welcome_screens/welcome_screen_1.dart';
import 'package:up_todo_app/screens/welcome_screens/welcome_screen_3.dart';
import 'package:up_todo_app/screens/welcome_screens/login_and_registration_screen.dart';

class WelcomeScreenSecond extends StatefulWidget {
  WelcomeScreenSecond({Key? key}) : super(key: key);

  @override
  State<WelcomeScreenSecond> createState() => _WelcomeScreenSecondState();
}

class _WelcomeScreenSecondState extends State<WelcomeScreenSecond> {
  final _totalDots = 3;
  double _currentPosition = 1.0;

  double _validPosition(double position) {
    if (position >= _totalDots) return 0;
    if (position < 0) return _totalDots - 1.0;
    return position;
  }

  void _updatePosition(double position) {
    setState(() => _currentPosition = _validPosition(position));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(scaffoldBackgroundColor: backgroundColor),
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(bottom: 25, left: 15, right: 15),
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: backgroundColor,
              elevation: 0,
              leading: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginAndRegistrationScreeen(),
                      ));
                },
                child: Text('SKIP',
                    style: TextStyle(fontSize: 17, color: greyColor)),
              ),
            ),
            body: Column(
              children: [
                Center(
                  child: Image(
                    image: AssetImage('assets/welcome_screen_2_intro.png'),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: DotsIndicator(
                    dotsCount: _totalDots,
                    position: _currentPosition,
                    onTap: (position) {},
                    decorator: DotsDecorator(
                      size: const Size.square(9.0),
                      activeColor: whiteColor,
                      activeSize: const Size(18.0, 9.0),
                      activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Center(
                    child: Text(
                  'Create daily routine',
                  style: TextStyle(
                      color: whiteColor,
                      fontSize: 32,
                      fontWeight: FontWeight.bold),
                )),
                const SizedBox(
                  height: 23,
                ),
                Center(
                    child: Text(
                  'In Uptodo  you can create your ',
                  style: TextStyle(
                      color: whiteColor,
                      fontSize: 16.5,
                      fontWeight: FontWeight.w500),
                )),
                Center(
                    child: Text(
                  'personalized routine to stay productive',
                  style: TextStyle(
                      color: whiteColor,
                      fontSize: 16.5,
                      fontWeight: FontWeight.w500),
                )),
                const SizedBox(
                  height: 180,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WelcomeScreenFirst()));
                      },
                      child: Text('BACK',
                          style: TextStyle(fontSize: 17, color: greyColor)),
                    ),
                    Container(
                      width: 100,
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
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
