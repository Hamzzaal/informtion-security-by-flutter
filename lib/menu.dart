
import  'package:flutter/material.dart' ;

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController _inputController = TextEditingController();
  TextEditingController _resultController = TextEditingController();
  int _result = 0;

  void _calculateResult() {
    int inputValue = int.tryParse(_inputController.text) ?? 0;
    setState(() {
      _result = inputValue;
      _resultController.text = _result.toString();
    });
  }

  void _multiplyNumber() {
    int inputValue = int.tryParse(_inputController.text) ?? 0;
    setState(() {
      _result = _result * inputValue;
      _resultController.text = _result.toString();
    });
  }

  void _toggleNegative() {
    setState(() {
      _result = -_result;
      _resultController.text = _result.toString();
    });
  }

  void _clearResult() {
    setState(() {
      _result = 0;
      _inputController.clear();
      _resultController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:  'Flutter App' ,
      home: Scaffold(
        appBar: AppBar(
          title: Text('حاسبة' ),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _inputController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: ' أدخل العدد' ,
                ),
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      _calculateResult();
                    },
                    child: Text('احسب' ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _toggleNegative();
                    },
                    child: Text('السالب' ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _multiplyNumber();
                    },
                    child: Text('مضروب' ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('مضاعفات العدد' ),
                            content: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text( '${_result} × 2 = ${_result * 2}' ),
                                Text( '${_result} × 3 = ${_result * 3}' ),
                                Text( '${_result} × 4 = ${_result * 4}' ),
                                Text( '${_result} × 5 = ${_result * 5}' ),
                              ],
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text(' موافق '),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Text('مضاعفات العدد' ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: _resultController,
                readOnly: true,
                decoration: InputDecoration(
                  labelText:  'النتيجة ',
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  _clearResult();
                },
                child: Text(' مسح النتيجة '),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
