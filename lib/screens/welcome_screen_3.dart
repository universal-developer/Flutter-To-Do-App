import 'package:flutter/material.dart';
import 'package:up_todo_app/colors.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:up_todo_app/screens/login_and_registration_screen.dart';
import 'package:up_todo_app/screens/welcome_screen_1.dart';
import 'package:up_todo_app/screens/welcome_screen_2.dart';

class WelcomeScreenThird extends StatefulWidget {
  WelcomeScreenThird({Key? key}) : super(key: key);

  @override
  State<WelcomeScreenThird> createState() => _WelcomeScreenThirdState();
}

class _WelcomeScreenThirdState extends State<WelcomeScreenThird> {
  final _totalDots = 3;
  double _currentPosition = 2.0;

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
          padding: EdgeInsets.only(left: 15, right: 15),
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
            body: Padding(
              padding: EdgeInsets.only(top: 40),
              child: Column(
                children: [
                  Center(
                    child: Image(
                      image: AssetImage('assets/welcome_screen_3_intro.png'),
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
                    'Orgonaize your tasks',
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
                    'You can organize your daily tasks by  ',
                    style: TextStyle(
                        color: whiteColor,
                        fontSize: 16.5,
                        fontWeight: FontWeight.w500),
                  )),
                  Center(
                      child: Text(
                    'adding your tasks into separate categories',
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
                                  builder: (context) => WelcomeScreenSecond()));
                        },
                        child: Text('BACK',
                            style: TextStyle(fontSize: 17, color: greyColor)),
                      ),
                      Container(
                        width: 170,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        ),
                        child: ElevatedButton(
                          child: const Text('GET STARTED'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      LoginAndRegistrationScreeen(),
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
      ),
    );
  }
}
