import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
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
                  'Forgot Password',
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
                    decoration: InputDecoration(
                      hintText: 'Email',
                      label: Text('Email'),
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
                      hintText: 'Username',
                      label: Text('Username'),
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
                      hintText: 'New Password',
                      label: Text(' New Password'),
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
                  padding: EdgeInsets.all(15.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Confirm Password',
                      label: Text('Confirm Password'),
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
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(Size(510, 60)),
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromRGBO(5, 217, 232, 1.0))),
                  child: Container(
                    child: Center(
                      child: Text(
                        'Forgot Password',
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
                        'Or Sign Up With',
                        style: TextStyle(
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
                        color: Color.fromRGBO(209,247,255, 1.0),
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
                        color: Color.fromRGBO(209,247,255, 1.0),
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
                        color: Color.fromRGBO(209,247,255, 1.0),
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
              ],
            ),
          )
        ],
      ),
    );
}
}
