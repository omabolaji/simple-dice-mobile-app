import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DiceApp(),
  );
}

class DiceApp extends StatefulWidget {
  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 2;

  void changeDiceNumber() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(
            child: Text('Dice App'),
          ),
          backgroundColor: Colors.red.shade800,
        ),
        body: SafeArea(
          child: Center(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      changeDiceNumber();
                    },
                    child: Image.asset('images/dice$leftDiceNumber.png'),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      changeDiceNumber();
                    },
                    child: Image.asset('images/dice$rightDiceNumber.png'),
                  ),
                ),
//              Image.asset('images/dice1.png'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
