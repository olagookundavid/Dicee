import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.tealAccent,
        appBar: AppBar(
          title: const Text('Dicee'),
          backgroundColor: Colors.teal,
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdicenumber = 1;
  int rytdicenumber = 1;

  void statesetter() {
    setState(() {
      leftdicenumber = Random().nextInt(6) + 1;
      rytdicenumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [const Text('HELLO', style: TextStyle(fontWeight: FontWeight.bold),),
          const Text("Welcome to this game, it's a simple dice game that allows you to get random dice values. Enjoy with friends and give me a feedback!", style: TextStyle(fontWeight: FontWeight.bold),),
          Row(
            children: [
              Expanded(
                child: TextButton(
                    onPressed: () {
                      statesetter();
                    },
                    child: Image.asset('images/dice$leftdicenumber.png')),
              ),
              Expanded(
                child: TextButton(
                    onPressed: () {
                      statesetter();
                    },
                    child: Image.asset('images/dice$rytdicenumber.png')),
                    
              ),
              
            ],
          ),
          const Text('Thank You')
        ],
      ),
    );
  }
}
