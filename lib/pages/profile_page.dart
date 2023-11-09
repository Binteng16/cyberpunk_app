import 'package:flutter/material.dart';
import 'package:gas/pages/login_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(209,247,255, 1.0),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 50, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 100),
                        child: Stack(children: [
                          CircleAvatar(
                            radius: 100,
                            backgroundImage: AssetImage('assets/profile.jpg'),
                          ),
                          Positioned(
                            bottom: 10,
                            right: 10,
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(255, 42, 109, 1.0),
                                  shape: BoxShape.circle),
                              child: Icon(
                                Icons.edit,
                                color: Color.fromRGBO(5, 217, 232, 1.0),
                              ),
                            ),
                          ),
                        ]),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        'Bintang Ghani Sasmita',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'bintang.ghani@mhs.itenas.ac.id',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 42, 109, 1.0),
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Text(
                            'UTS Pemograman Mobile',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(5, 217, 232, 1.0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      ElevatedButton(
                        onPressed: () {  },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(255, 42, 109, 1.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0), // Atur radius sesuai keinginan
                          ),
                        ),
                        child: Container(
                          height: 60,
                          width: 500,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 50),
                                child: Icon(Icons.help_outline,
                                color: Color.fromRGBO(5, 217, 232, 1.0),
                                ),
                              ),
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 175),
                                  child: Text(
                                    'Help & Support',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromRGBO(5, 217, 232, 1.0),
                                    ),
                                  ),
                                ),
                              ),
                              Icon(Icons.arrow_forward_ios,
                                color: Color.fromRGBO(5, 217, 232, 1.0),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      ElevatedButton(
                        onPressed: () {
                        },

                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(255, 42, 109, 1.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0), // Atur radius sesuai keinginan
                          ),
                        ),
                        child: Container(
                          height: 60,
                          width: 500,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 50),
                                child: Icon(Icons.settings,
                                  color: Color.fromRGBO(5, 217, 232, 1.0),
                                ),
                              ),
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 230),
                                  child: Text(
                                    'Settings',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromRGBO(5, 217, 232, 1.0),
                                    ),
                                  ),
                                ),
                              ),
                              Icon(Icons.arrow_forward_ios,
                                color: Color.fromRGBO(5, 217, 232, 1.0),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      ElevatedButton(
                        onPressed: () {
                          // Show an alert dialog
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text("Log Out"),
                                content: Text("Dou you want to Log Out"),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop(); // Close the alert dialog
                                    },
                                    child: Text("No"),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) => LoginPage(),
                                        ),
                                      );
                                    },
                                    child: Text("Yes"),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(255, 42, 109, 1.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0), // Adjust the radius as needed
                          ),
                        ),
                        child: Container(
                          height: 60,
                          width: 500,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 50),
                                child: Icon(
                                  Icons.logout,
                                  color: Color.fromRGBO(5, 217, 232, 1.0),
                                ),
                              ),
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 230),
                                  child: Text(
                                    'Log Out',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromRGBO(5, 217, 232, 1.0),
                                    ),
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Color.fromRGBO(5, 217, 232, 1.0),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
