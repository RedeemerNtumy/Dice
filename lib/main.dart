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
          backgroundColor: Colors.black87,
          title: Center(child: Text("Lets Play Dice !")),
        ),
        body: SafeArea(
          child: Row(
            children: [
              Expanded(
                child: Image(
                  image: AssetImage('/assets/dice1.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
