import 'package:flutter/material.dart';

enum CurrencyUnit {
  Dollar,
  Yen,
  Won,
  PoundSterling,
}

class CurrencyConverter extends StatefulWidget {
  @override
  _CurrencyConverterState createState() => _CurrencyConverterState();
}

class _CurrencyConverterState extends State<CurrencyConverter> {
  TextEditingController inputController = TextEditingController();
  TextEditingController resultController = TextEditingController();
  CurrencyUnit selectedUnit = CurrencyUnit.Dollar;

  double rupiahToCurrencyUnit(double rupiah, CurrencyUnit unit) {
    double rate = 1.0; // Default to Dollar

    if (unit == CurrencyUnit.Yen) {
      rate = 110.31; // Rate to Yen
    } else if (unit == CurrencyUnit.Won) {
      rate = 1314.05; // Rate to Won
    } else if (unit == CurrencyUnit.PoundSterling) {
      rate = 0.74; // Rate to Pound Sterling
    }

    return rupiah / rate;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(209, 247, 255, 1.0),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(1, 1, 43, 1.0),
        title: Text('Currency Converter'),
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
                              decoration: InputDecoration(labelText: 'Enter Amount (in Rupiah)'),
                            ),
                          ),
                          SizedBox(width: 20),
                          DropdownButton<CurrencyUnit>(
                            value: selectedUnit,
                            onChanged: (value) {
                              setState(() {
                                selectedUnit = value!;
                              });
                            },
                            items: CurrencyUnit.values.map((unit) {
                              return DropdownMenuItem<CurrencyUnit>(
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
                          double rupiah = double.tryParse(inputController.text) ?? 0;
                          double result = rupiahToCurrencyUnit(rupiah, selectedUnit);
                          resultController.text = result.toStringAsFixed(2);
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.blue),
                          fixedSize: MaterialStateProperty.all(Size(200, 50)),
                        ),
                        child: Text(
                          'Convert',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
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
