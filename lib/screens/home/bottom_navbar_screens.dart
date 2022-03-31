import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:up_todo_app/colors.dart';
import 'package:up_todo_app/screens/home/add_item_screen.dart';
import 'package:up_todo_app/screens/home/calendar_screen.dart';
import 'package:up_todo_app/screens/home/focuse_screen.dart';
import 'package:up_todo_app/screens/home/home_screen.dart';
import 'package:up_todo_app/screens/home/profile_screen.dart';

class BottomNavBar extends StatefulWidget {
  BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final _screens = [
    HomeScreen(),
    CalendarScreen(),
    FocuseScreen(),
    ProfileScreen()
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Future _openToDo() => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Add new task'),
          backgroundColor: backgroundColor,
          content: TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Password',
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(CupertinoIcons.line_horizontal_3_decrease)),
            IconButton(
                onPressed: () {},
                icon: Icon(CupertinoIcons.line_horizontal_3_decrease)),
            IconButton(
                onPressed: () {},
                icon: Icon(CupertinoIcons.line_horizontal_3_decrease)),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = 65;

    final primaryColor = purpleColor;
    final secondaryColor = greyColor;
    final accentColor = whiteColor;

    final shadowColor = Colors.grey; //color of Navbar shadow
    double elevation = 100; //Elevation of the bottom Navbar

    return Scaffold(
      extendBody: true,
      body: _screens.elementAt(_selectedIndex),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        elevation: 0,
        child: Stack(
          children: [
            CustomPaint(
              size: Size(size.width, height),
              painter: BottomNavCurvePainter(
                  backgroundColor: Color(0xFF363536),
                  shadowColor: shadowColor,
                  elevation: elevation),
            ),
            Center(
              heightFactor: 0.2,
              child: FloatingActionButton(
                  backgroundColor: purpleColor,
                  child: Icon(CupertinoIcons.plus),
                  elevation: 0.1,
                  onPressed: _openToDo),
            ),
            Container(
              height: height,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  NavBarIcon(
                    text: "Index",
                    icon: CupertinoIcons.house_fill,
                    selected: _selectedIndex == 0 ? true : false,
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 0;
                      });
                    },
                    defaultColor: greyColor,
                    selectedColor: whiteColor,
                  ),
                  NavBarIcon(
                    text: "Calendar",
                    icon: CupertinoIcons.calendar,
                    selected: _selectedIndex == 1 ? true : false,
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 1;
                      });
                    },
                    defaultColor: greyColor,
                    selectedColor: whiteColor,
                  ),
                  SizedBox(width: 56),
                  NavBarIcon(
                      text: "Focuse",
                      icon: CupertinoIcons.clock,
                      selected: _selectedIndex == 2 ? true : false,
                      onPressed: () {
                        setState(() {
                          _selectedIndex = 2;
                        });
                      },
                      defaultColor: greyColor,
                      selectedColor: whiteColor),
                  NavBarIcon(
                    text: "Profile",
                    icon: CupertinoIcons.person,
                    selected: _selectedIndex == 3 ? true : false,
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 3;
                      });
                    },
                    selectedColor: whiteColor,
                    defaultColor: greyColor,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BottomNavCurvePainter extends CustomPainter {
  BottomNavCurvePainter(
      {this.backgroundColor = Colors.white,
      this.insetRadius = 38,
      this.shadowColor = Colors.grey,
      this.elevation = 100});

  Color backgroundColor;
  Color shadowColor;
  double elevation;
  double insetRadius;
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = backgroundColor
      ..style = PaintingStyle.fill;
    Path path = Path();

    double insetCurveBeginnningX = size.width / 2 - insetRadius;
    double insetCurveEndX = size.width / 2 + insetRadius;

    path.lineTo(insetCurveBeginnningX, 0);

    path.lineTo(size.width, 0);

    path.lineTo(size.width, size.height + 56);
    path.lineTo(
        0,
        size.height +
            56); //+56 here extends the navbar below app bar to include extra space on some screens (iphone 11)
    canvas.drawShadow(path, shadowColor, elevation, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class NavBarIcon extends StatelessWidget {
  const NavBarIcon(
      {Key? key,
      required this.text,
      required this.icon,
      required this.selected,
      required this.onPressed,
      this.selectedColor = const Color(0xffFF8527),
      this.defaultColor = Colors.black54})
      : super(key: key);
  final String text;
  final IconData icon;
  final bool selected;
  final Function() onPressed;
  final Color defaultColor;
  final Color selectedColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: onPressed,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          icon: Icon(
            icon,
            size: 25,
            color: selected ? selectedColor : defaultColor,
          ),
        ),
        Text(text, style: TextStyle(color: whiteColor))
      ],
    );
  }
}
