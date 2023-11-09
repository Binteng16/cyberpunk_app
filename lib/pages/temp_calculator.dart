import 'package:flutter/material.dart';

enum TemperatureUnit {
  Fahrenheit,
  Kelvin,
  Reamur,
}

class TempCalculator extends StatefulWidget {
  @override
  _TempCalculatorState createState() => _TempCalculatorState();
}

class _TempCalculatorState extends State<TempCalculator> {
  TextEditingController inputController = TextEditingController();
  TextEditingController resultController = TextEditingController();
  TemperatureUnit selectedUnit = TemperatureUnit.Fahrenheit;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(209,247,255, 1.0),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(1, 1, 43, 1.0),
        title: Text('Temperature Calculator'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: TextField(
                              controller: inputController,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(labelText: 'Enter Temperature'),
                            ),
                          ),
                          SizedBox(width: 20),
                          DropdownButton<TemperatureUnit>(
                            value: selectedUnit,
                            onChanged: (value) {
                              setState(() {
                                selectedUnit = value!;
                              });
                            },
                            items: TemperatureUnit.values.map((unit) {
                              return DropdownMenuItem<TemperatureUnit>(
                                value: unit,
                                child: Text(unit.toString().split('.').last),
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      TextField(
                        controller: resultController,
                        enabled: false,
                        decoration: InputDecoration(labelText: 'Result'),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          double inputValue = double.tryParse(inputController.text) ?? 0;
                          double result = 0;

                          if (selectedUnit == TemperatureUnit.Fahrenheit) {
                            // Convert to Fahrenheit
                            result = (inputValue * 9 / 5) + 32;
                          } else if (selectedUnit == TemperatureUnit.Kelvin) {
                            // Convert to Kelvin
                            result = inputValue + 273.15;
                          } else if (selectedUnit == TemperatureUnit.Reamur) {
                            // Convert to Reamur
                            result = inputValue * 4 / 5;
                          }

                          resultController.text = result.toStringAsFixed(2);
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.blue), // Ganti warna sesuai keinginan
                          fixedSize: MaterialStateProperty.all(Size(200, 50)), // Sesuaikan ukuran
                        ),
                        child: Text(
                          'Calculate',
                          style: TextStyle(
                            color: Colors.white, // Ganti warna teks
                            fontSize: 18, // Sesuaikan ukuran teks
                          ),
                        ),
                      ),

                    ],
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
