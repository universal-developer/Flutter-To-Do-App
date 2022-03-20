import 'package:flutter/material.dart';
import 'package:up_todo_app/colors.dart';
import 'package:dots_indicator/dots_indicator.dart';

class WelcomeScreenFirst extends StatefulWidget {
  WelcomeScreenFirst({Key? key}) : super(key: key);

  @override
  State<WelcomeScreenFirst> createState() => _WelcomeScreenFirstState();
}

class _WelcomeScreenFirstState extends State<WelcomeScreenFirst> {
  final _totalDots = 3;
  double _currentPosition = 0.0;

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
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: backgroundColor,
          elevation: 0,
          leading: TextButton(
            onPressed: () {},
            child:
                Text('SKIP', style: TextStyle(fontSize: 17, color: greyColor)),
          ),
        ),
        body: Column(
          children: [
            Center(
              child: Image(
                image: AssetImage('assets/welcome_screen_intro.png'),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: DotsIndicator(
                dotsCount: _totalDots,
                position: _currentPosition,
                onTap: (position) {
                  setState(() => _currentPosition = position);
                },
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
              'Manage your tasks',
              style: TextStyle(
                  color: whiteColor, fontSize: 32, fontWeight: FontWeight.bold),
            )),
            const SizedBox(
              height: 30,
            ),
            Center(
                child: Text(
              'You can easily manage all of your daily',
              style: TextStyle(
                  color: whiteColor,
                  fontSize: 16.5,
                  fontWeight: FontWeight.w500),
            )),
            Center(
                child: Text(
              'tasks in DoMe for free',
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
                  onPressed: () {},
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
                    onPressed: () {},
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
    );
  }
}
