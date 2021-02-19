import 'package:flutter/material.dart';

void main() {
  runApp(falcText());
}

class falcText extends StatefulWidget {
  @override
  _falcTextState createState() => _falcTextState();
}

class _falcTextState extends State<falcText> {
  TextEditingController num1 = new TextEditingController();
  TextEditingController num2 = new TextEditingController();
  int v1 = 0, v2 = 0;
  String result = "Answer";

  @override
  Widget build(BuildContext context) {
    //    NumberField a = new NumberField(1);
//    NumberField b = new NumberField(2);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Welcomer Bois",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello Flutter"),
        ),
        body: Column(children: [
          Center(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(labelText: 'Enter Number 1'),
                keyboardType: TextInputType.number,
                controller: num1,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(labelText: 'Enter Number 2'),
                keyboardType: TextInputType.number,
                controller: num2,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RaisedButton(
                child: Text("+"),
                onPressed: () {
                  _add();
                },
              ),
              RaisedButton(
                child: Text("-"),
                onPressed: () {
                  _sub();
                },
              ),
              RaisedButton(
                  child: Text("*"),
                  onPressed: () {
                    _mul();
                  }),
              RaisedButton(
                  child: Text("/"),
                  onPressed: () {
                    _div();
                  }),
            ],
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(result),
            ),
          ),
        ]),

      ),
    );
  }

  void _add() {
    setState(() {
      result = (int.parse(num1.text) + int.parse(num2.text)).toString();
      print(result);
    });
  }

  void _sub() {
    setState(() {
      result = (int.parse(num1.text) - int.parse(num2.text)).toString();
      print(result);
    });
  }

  void _mul() {
    setState(() {
      result = (int.parse(num1.text) * int.parse(num2.text)).toString();
      print(result);
    });
  }

  void _div() {
    setState(() {
      result = (int.parse(num1.text) / int.parse(num2.text)).toString();
      print(result);
    });
  }
}
