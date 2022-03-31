import 'package:flutter/material.dart';
import 'package:up_todo_app/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:up_todo_app/screens/home/add_item_screen.dart';
import 'package:up_todo_app/screens/home/bottom_navbar_screens.dart';
import 'package:up_todo_app/screens/home/calendar_screen.dart';
import 'package:up_todo_app/screens/home/focuse_screen.dart';
import 'package:up_todo_app/screens/home/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(scaffoldBackgroundColor: backgroundColor),
      home: Scaffold(
        extendBody: true,
        appBar: AppBar(
          backgroundColor: backgroundColor,
          elevation: 0,
          title:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            IconButton(
                onPressed: () {},
                icon: Icon(CupertinoIcons.line_horizontal_3_decrease)),
            Text('Index'),
            InkWell(
              onTap: () {},
              child: CircleAvatar(
                backgroundImage:
                    AssetImage('assets/Home_Screen/circle_avatar.png'),
              ),
            )
          ]),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 80,
                ),
                Center(
                  child: Image(
                    image:
                        AssetImage('assets/Home_Screen/home_screen_image.png'),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'What do you want to do today?',
                  style: TextStyle(
                      color: whiteColor,
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Tap + to add your tasks',
                  style: TextStyle(
                      color: whiteColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
