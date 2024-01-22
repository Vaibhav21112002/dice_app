import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: const DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 2;

  void changeDiceFace() {
    leftDiceNumber = Random().nextInt(6) + 1;
    rightDiceNumber = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: TextButton(
            child: Image.asset('images/dice$leftDiceNumber.png'),
            onPressed: () {
              setState(() {
                changeDiceFace();
              });
            },
          )),
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice$rightDiceNumber.png'),
              onPressed: () {
                setState(() {
                  changeDiceFace();
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
