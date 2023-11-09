import 'package:flutter/material.dart';

class SimpleCalculator extends StatefulWidget {
  @override
  _SimpleCalculatorState createState() => _SimpleCalculatorState();
}

class _SimpleCalculatorState extends State<SimpleCalculator> {
  TextEditingController firstNumberController = TextEditingController();
  TextEditingController secondNumberController = TextEditingController();
  TextEditingController resultController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(209,247,255, 1.0),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO	(1,1,43, 1.0),
        title: Text(
            'Simple Calculator',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TextField(
                    controller: firstNumberController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(labelText: 'Input First Number'),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TextField(
                    controller: secondNumberController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(labelText: 'Input Second Number'),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TextField(
                    controller: resultController,
                    enabled: false,
                    decoration: InputDecoration(labelText: 'Result'),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row( // Menggunakan Row untuk mengelompokkan tombol operasi matematika
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Mengatur jarak antara tombol
                children: [
                  ElevatedButton(
                    onPressed: () {
                      double firstNumber = double.tryParse(firstNumberController.text) ?? 0;
                      double secondNumber = double.tryParse(secondNumberController.text) ?? 0;
                      double sum = firstNumber + secondNumber;
                      resultController.text = sum.toStringAsFixed(2);
                    },
                    child: Text('+'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      double firstNumber = double.tryParse(firstNumberController.text) ?? 0;
                      double secondNumber = double.tryParse(secondNumberController.text) ?? 0;
                      double sum = firstNumber - secondNumber;
                      resultController.text = sum.toStringAsFixed(2);
                    },
                    child: Text('-'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      double firstNumber = double.tryParse(firstNumberController.text) ?? 0;
                      double secondNumber = double.tryParse(secondNumberController.text) ?? 0;
                      double sum = firstNumber * secondNumber;
                      resultController.text = sum.toStringAsFixed(2);
                    },
                    child: Text('x'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      double firstNumber = double.tryParse(firstNumberController.text) ?? 0;
                      double secondNumber = double.tryParse(secondNumberController.text) ?? 0;
                      double sum = firstNumber / secondNumber;
                      resultController.text = sum.toStringAsFixed(2);
                    },
                    child: Text('/'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() => runApp(MaterialApp(home: SimpleCalculator()));
