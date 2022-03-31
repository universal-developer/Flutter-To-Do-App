import 'package:flutter/material.dart';
import 'package:up_todo_app/screens/welcome_screens/welcome_screen_1.dart';
import 'package:up_todo_app/colors.dart';

void main() {
  runApp(const UpToDoApp());
}

class UpToDoApp extends StatefulWidget {
  const UpToDoApp({Key? key}) : super(key: key);

  @override
  State<UpToDoApp> createState() => _UpToDoAppState();
}

class _UpToDoAppState extends State<UpToDoApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: backgroundColor),
      home: Scaffold(
        body: WelcomeScreenFirst(),
      ),
    );
  }
}
