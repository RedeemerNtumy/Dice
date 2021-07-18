import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(Dice());
}

class Dice extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int leftDice = 1;
  int rightDice = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Center(
            child: Text("Lets Play Dice !"),
          ),
        ),
        backgroundColor: Colors.black54,
        body: Center(
          child: SafeArea(
            child: Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        leftDice = Random().nextInt(6) + 1;
                      });
                    },
                    child: Image.asset('assets/dice$leftDice.png'),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        rightDice = Random().nextInt(6) + 1;
                      });
                    },
                    child: Image.asset('assets/dice$rightDice.png'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
