import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const DiceApp());
}

class DiceApp extends StatelessWidget {
  const DiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Text(
            'Dice Roller',
            //selectionColor: Color.fromARGB(255, 243, 46, 46),
          )),
          backgroundColor: Color.fromARGB(255, 152, 48, 208),
        ),
        body: const DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int DiceNumber = 1;

  void rollDice() {
    setState(() {
      DiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image.asset('assets/images/dice$DiceNumber.png'),
                ),
              ),
            ],
          ),
          OutlinedButton(
            onPressed: rollDice,
            child: const Text('Click Here'),
          ),
        ],
      ),
    );
  }
}
