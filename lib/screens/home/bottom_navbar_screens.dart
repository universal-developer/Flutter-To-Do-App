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
    AddItemScreen(),
    FocuseScreen(),
    ProfileScreen()
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: _screens.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.house),
                label: 'Home',
                backgroundColor: backgroundColor),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.house),
                label: 'Home',
                backgroundColor: backgroundColor),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.house),
                label: 'Home',
                backgroundColor: backgroundColor),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.house),
                label: 'Home',
                backgroundColor: backgroundColor),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.house),
                label: 'Home',
                backgroundColor: backgroundColor),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: whiteColor,
          onTap: _onItemTapped),
    );
  }
}
