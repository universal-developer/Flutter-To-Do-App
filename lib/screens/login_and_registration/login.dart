import 'package:flutter/material.dart';
import 'package:up_todo_app/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:up_todo_app/screens/welcome_screens/welcome_screen_3.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isObscure = true;
  bool isChecked = false;

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
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                'Login',
                style: TextStyle(
                    color: whiteColor,
                    fontSize: 32,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                child: Text('Username',
                    style: TextStyle(
                        fontWeight: FontWeight.w200,
                        fontSize: 15,
                        color: Colors.white)),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                child: TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  style: const TextStyle(fontSize: 14, color: Colors.white),
                  decoration: InputDecoration(
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
                    filled: true,
                    labelText: 'Enter Your Username',
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    hoverColor: Colors.grey,
                    focusColor: Colors.grey,
                    hintText: 'required',
                    hintStyle: const TextStyle(color: Color(0xFF6D6D6D)),
                    labelStyle: const TextStyle(color: Colors.grey),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 0.0, horizontal: 20.0),
                    border: const OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xFF6D6D6D), width: 1.0),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xFF6D6D6D), width: 1.0),
                    ),
                    errorBorder: const OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xFF6D6D6D), width: 1.0),
                    ),
                    enabledBorder: const OutlineInputBorder(
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
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                child: Text('Password',
                    style: TextStyle(
                        fontWeight: FontWeight.w200,
                        fontSize: 15,
                        color: Colors.white)),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                child: TextFormField(
                  controller: _passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  maxLength: 16,
                  style: const TextStyle(fontSize: 14, color: Colors.white),
                  decoration: InputDecoration(
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

                    filled: true,
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    labelText: '***********',
                    hoverColor: Colors.grey,
                    focusColor: Colors.grey,
                    hintText: 'required',
                    hintStyle: const TextStyle(color: Color(0xFF6D6D6D)),
                    labelStyle: const TextStyle(color: Colors.grey),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 0.0, horizontal: 20.0),
                    border: const OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xFF6D6D6D), width: 1.0),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xFF6D6D6D), width: 1.0),
                    ),
                    errorBorder: const OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xFF6D6D6D), width: 1.0),
                    ),
                    enabledBorder: const OutlineInputBorder(
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
              ),
              const SizedBox(height: 20),
              Center(
                child: Container(
                  padding: const EdgeInsets.only(top: 10),
                  child: SizedBox(
                    width: 350,
                    height: 55,
                    child: ElevatedButton(
                        onPressed: () {
                          /*Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const WelcomeScreen()),
                        );
                        setState(() {});*/
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Center(
                              child: Text('Login',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 17)),
                            ),
                          ],
                        ),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color(0xff8D95FF)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                side:
                                    const BorderSide(color: Color(0xff8D95FF)),
                              ),
                            ))),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Stack(children: [
                Divider(
                  color: greyColor,
                ),
                Center(child: Text('or', style: TextStyle(color: whiteColor))),
              ]),
              const SizedBox(
                height: 0,
              ),
              Center(
                child: Container(
                  padding: const EdgeInsets.only(top: 30),
                  child: SizedBox(
                    width: 350,
                    height: 60,
                    child: ElevatedButton(
                        onPressed: () {
                          /*Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegistrationScreen()),
                      );*/
                        },
                        child: Row(
                          children: [
                            const Icon(FontAwesomeIcons.google,
                                color: Colors.white),
                            Container(
                              padding: const EdgeInsets.only(left: 55),
                              child: const Text('CONTINUE WITH GOOGLE',
                                  style: TextStyle(color: Colors.white)),
                            ),
                          ],
                        ),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color(0xFF121212)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                side:
                                    const BorderSide(color: Color(0xff8D95FF)),
                              ),
                            ))),
                  ),
                ),
              ),
              Center(
                child: Container(
                  padding: const EdgeInsets.only(top: 30),
                  child: SizedBox(
                    width: 350,
                    height: 60,
                    child: ElevatedButton(
                        onPressed: () {
                          /*Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegistrationScreen()),
                      );*/
                        },
                        child: Row(
                          children: [
                            const Icon(FontAwesomeIcons.apple,
                                color: Colors.white),
                            Container(
                              padding: const EdgeInsets.only(left: 55),
                              child: const Text('CONTINUE WITH APPLE',
                                  style: TextStyle(color: Colors.white)),
                            ),
                          ],
                        ),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color(0xFF121212)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                side:
                                    const BorderSide(color: Color(0xff8D95FF)),
                              ),
                            ))),
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
