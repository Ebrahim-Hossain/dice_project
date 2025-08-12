import 'package:flutter/material.dart';
import 'dart:math';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 2;

  void diceChange() {
   setState(() {
     leftDiceNumber = Random().nextInt(6) + 1;
     rightDiceNumber = Random().nextInt(6) + 1;
   });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Center(child: Text('data')),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    leftDiceNumber = Random().nextInt(6) + 1;
                    rightDiceNumber = Random().nextInt(6) + 1;
                  });
                },
                child: Image(
                    image: AssetImage('images/dice$leftDiceNumber.png')),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    rightDiceNumber = Random().nextInt(6) + 1;
                    leftDiceNumber = Random().nextInt(6) + 1;
                  });
                },
                child: Image(
                    image: AssetImage('images/dice$rightDiceNumber.png')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
