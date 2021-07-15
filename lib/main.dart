import 'package:flutter/material.dart';

void main() {
  runApp(Dice());
}

class Dice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Center(child: Text("Lets Play Dice !")),
        ),
        backgroundColor: Colors.black54,
        body: Center(
          child: SafeArea(
            child: Row(
              children: [
                Expanded(
                  child: TextButton(
                    child: Image.asset('assets/dice1.png'),
                    onPressed: () {
                      print("The left button got pressed");
                    },
                  ),
                ),
                Expanded(
                  child: TextButton(
                    child: Image.asset('assets/dice1.png'),
                    onPressed: () {
                      print("The right button got pressed");
                    },
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
