import 'package:animated_switch/animated_switch.dart';
import 'package:flutter/material.dart';
import 'package:gas/pages/forgot_password_page.dart';
import 'package:gas/pages/home_page.dart';
import 'package:gas/pages/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
  String inputValue = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Opacity(
            opacity: 0.8,
            child: Image.asset(
              'assets/bg_login.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Login',
                  style: TextStyle(
                    color: Color.fromRGBO(255, 42, 109, 1.0),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: TextField(
                    onChanged: (text) {
                      setState(() {
                        inputValue = text;
                      });
                    },
                    decoration: InputDecoration(
                      hintText: 'Email or Username',
                      label: Text('Email or Username'),
                      labelStyle: TextStyle(
                        color: Color.fromRGBO(255, 42, 109, 1.0),
                        fontWeight: FontWeight.bold,
                      ),
                      fillColor: Color.fromRGBO(209, 247, 255, 1.0),
                      filled: true,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Password',
                      label: Text('Password'),
                      suffixIcon: Icon(Icons.visibility_off),
                      labelStyle: TextStyle(
                        color: Color.fromRGBO(255, 42, 109, 1.0),
                        fontWeight: FontWeight.bold,
                      ),
                      fillColor: Color.fromRGBO(209, 247, 255, 1.0),
                      filled: true,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 19, top: 8, right: 19),
                  child: Row(
                    children: [
                      AnimatedSwitch(
                        colorOff: Color.fromRGBO(209, 247, 255, 1.0),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          'Remember me',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(255, 42, 109, 1.0),
                          ),
                        ),
                      ),
                      Spacer(),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => ForgotPasswordPage(),
                            ),
                          );
                        },
                        child: Text('Forgot Password',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(255, 42, 109, 1.0),
                        ),
                      ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  },
                  style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(Size(510, 60)),
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromRGBO(5, 217, 232, 1.0))),
                  child: Container(
                    child: Center(
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Color.fromRGBO(255, 42, 109, 1.0),
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Or Login With',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(255, 42, 109, 1.0),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 60,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(209, 247, 255, 1.0),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Icon(
                        Icons.g_mobiledata_rounded,
                        color: Color.fromRGBO(255, 42, 109, 1.0),
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(209, 247, 255, 1.0),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Icon(
                        Icons.facebook,
                        color: Color.fromRGBO(255, 42, 109, 1.0),
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(209, 247, 255, 1.0),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Icon(
                        Icons.discord,
                        color: Color.fromRGBO(255, 42, 109, 1.0),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.only(left: 170.0, top: 20),
                  child: Row(
                    children: [
                      Text(
                        "Don't have an account ?",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(255, 42, 109, 1.0),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => RegisterPage(),
                            ),
                          );
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            color: Color.fromRGBO(1, 1, 43, 1.0),
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
