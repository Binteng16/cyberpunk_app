import 'package:flutter/material.dart';
import 'package:gas/pages/home_screen.dart';
import 'package:gas/pages/profile_page.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'calculator_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static List<Widget> _pages = <Widget>[
    HomeScreen(),
    CalculatorPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(
          index: _selectedIndex,
          children: _pages,
        ),
        bottomNavigationBar: Container(
      color: Color.fromRGBO(1, 1, 43, 1.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 20,
        ),
        child: GNav(
            backgroundColor: Color.fromRGBO(1, 1, 43, 1.0),
            color: Color.fromRGBO(5, 217, 232, 1.0),
            activeColor: Color.fromRGBO(5, 217, 232, 1.0),
            tabBackgroundColor: Color.fromRGBO(255, 42, 109, 1.0),
            gap: 8,
            padding: EdgeInsets.all(20),
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.calculate,
                text: 'Calculator',
              ),
              GButton(
                icon: Icons.person,
                text: 'Profile',
              )
            ],
            selectedIndex: _selectedIndex,
            onTabChange: (index){
              setState(() {
                _selectedIndex = index;
              });
            }
        ),
      ),
    )

    );
  }
}
