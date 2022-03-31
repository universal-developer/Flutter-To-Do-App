import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:up_todo_app/colors.dart';
import 'package:up_todo_app/screens/home/calendar_screen.dart';
import 'package:up_todo_app/screens/home/focuse_screen.dart';
import 'package:up_todo_app/screens/home/home_screen.dart';
import 'package:up_todo_app/screens/home/profile_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final _screens = [
    const HomeScreen(),
    const CalendarScreen(),
    const FocuseScreen(),
    const ProfileScreen()
  ];

  int _selectedIndex = 0;

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          insetPadding: const EdgeInsets.all(0),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          backgroundColor: Color(0xFF363636),
          title: const Text('Add Task', style: TextStyle(color: Colors.white)),
          content: SizedBox(
            width: 300,
            height: 125,
            child: Column(
              children: <Widget>[
                TextFormField(
                  style: const TextStyle(fontSize: 14, color: Colors.white),
                  decoration: const InputDecoration(
                    /*suffixIcon: IconButton(
                  color: Colors.white,
                  icon: Icon(
                    _emailController.text.isNotEmpty
                        ? Icons.check_box
                        : null,
                    size: 15,
                  ),
                  onPressed: () {}),
                  */
                    filled: false,
                    labelText: 'Task Name',
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    hoverColor: Colors.grey,
                    focusColor: Colors.grey,
                    hintText: 'Do Math',
                    hintStyle: TextStyle(color: Color(0xFF6D6D6D)),
                    labelStyle: TextStyle(color: Colors.grey),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xFF6D6D6D), width: 1.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xFF6D6D6D), width: 1.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xFF6D6D6D), width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xFF6D6D6D), width: 1.0),
                    ),
                  ),
                  /*onSaved: (String? value) {
                  // This optional block of code can be used to run
                  // code when the user saves the form.
                },
                validator: (String? value) {
                  return (value != null && value.contains('@'))
                    ? 'Do not use the @ char.'
                    : null;
                },*/
                ),
                const SizedBox(height: 25),
                TextFormField(
                  style: const TextStyle(fontSize: 14, color: Colors.white),
                  decoration: const InputDecoration(
                    /*suffixIcon: IconButton(
                  color: Colors.white,
                  icon: Icon(
                    _emailController.text.isNotEmpty
                        ? Icons.check_box
                        : null,
                    size: 15,
                  ),
                  onPressed: () {}),
                  */
                    filled: false,
                    labelText: 'Description',
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    hoverColor: Colors.grey,
                    focusColor: Colors.grey,
                    hintText: 'Solve the equation',
                    hintStyle: TextStyle(color: Color(0xFF6D6D6D)),
                    labelStyle: TextStyle(color: Colors.grey),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xFF6D6D6D), width: 1.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xFF6D6D6D), width: 1.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xFF6D6D6D), width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xFF6D6D6D), width: 1.0),
                    ),
                  ),
                  /*onSaved: (String? value) {
                  // This optional block of code can be used to run
                  // code when the user saves the form.
                },
                validator: (String? value) {
                  return (value != null && value.contains('@'))
                    ? 'Do not use the @ char.'
                    : null;
                },*/
                ),
              ],
            ),
          ),
          actions: <Widget>[
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(CupertinoIcons.clock, color: whiteColor)),
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(CupertinoIcons.tag, color: whiteColor)),
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(CupertinoIcons.flag, color: whiteColor)),
                const Spacer(),
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(CupertinoIcons.arrowshape_turn_up_right,
                        color: whiteColor)),
              ],
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = 65;

    const shadowColor = Colors.grey;
    double elevation = 100;

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
                  backgroundColor: const Color(0xFF363536),
                  shadowColor: shadowColor,
                  elevation: elevation),
            ),
            Center(
              heightFactor: 0.2,
              child: FloatingActionButton(
                  backgroundColor: purpleColor,
                  child: const Icon(CupertinoIcons.plus),
                  elevation: 0.1,
                  onPressed: _showMyDialog),
            ),
            SizedBox(
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
                  const SizedBox(width: 56),
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
