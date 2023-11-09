import 'package:flutter/material.dart';
import 'package:gas/pages/bmi_calculator.dart';
import 'package:gas/pages/basic_calculator.dart';
import 'package:gas/pages/money_calculator.dart';
import 'package:gas/pages/temp_calculator.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({Key? key}) : super(key: key);

  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  // TextEditingController _inputController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Calculator Page',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        backgroundColor: Color.fromRGBO(1, 1, 43, 1.0),
      ),
      backgroundColor: Color.fromRGBO(209,247,255, 1.0),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0, bottom: 20.0),
        child: ListView(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => SimpleCalculator(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(255, 42, 109, 1.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0), // Atur radius sesuai keinginan
                  ),
                ),
                child: Container(
                  height: 70,
                  width: 500,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 50),
                        child: Icon(Icons.calculate,
                          color: Color.fromRGBO(5, 217, 232, 1.0),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 230),
                          child: Text(
                            'Basic Calculator',
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
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => BmiCalculator(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(255, 42, 109, 1.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0), // Atur radius sesuai keinginan
                  ),
                ),
                child: Container(
                  height: 70,
                  width: 500,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 50),
                        child: Icon(Icons.calculate,
                          color: Color.fromRGBO(5, 217, 232, 1.0),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 240),
                          child: Text(
                            'BMI Calculator',
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
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => TempCalculator(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(255, 42, 109, 1.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0), // Atur radius sesuai keinginan
                  ),
                ),
                child: Container(
                  height: 70,
                  width: 500,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 50),
                        child: Icon(Icons.ac_unit,
                          color: Color.fromRGBO(5, 217, 232, 1.0),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 230),
                          child: Text(
                            'Temp Calculator',
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
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => CurrencyConverter(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(255, 42, 109, 1.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0), // Atur radius sesuai keinginan
                  ),
                ),
                child: Container(
                  height: 70,
                  width: 500,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 50),
                        child: Icon(Icons.monetization_on,
                          color: Color.fromRGBO(5, 217, 232, 1.0),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 230),
                          child: Text(
                            'Money Converter',
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
            ],
          ),
        ),
    );
  }
}

