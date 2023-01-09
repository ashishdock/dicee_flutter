import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text("Dicee"),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDiceFace(String side) {
//    var side1 = '$side';
//    print("Value of side1 = $side");
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
    if (side == "Left") {
      print("Left button pressed");
      print(
          'Left dice number = $leftDiceNumber'); //string interpolation inside string interpolation is not possible in Dart
    } else {
      print("Right button pressed");

      print(
          'Right dice number = $rightDiceNumber'); //string interpolation inside string interpolation is not possible in Dart
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
//          flex: 1,
            child: FlatButton(
              onPressed: () {
                changeDiceFace('Left');
              },
              child: Image.asset("images/dice$leftDiceNumber.png"),
            ),
          ),
          Expanded(
//          flex: 2,
            child: FlatButton(
              child: Image.asset("images/dice$rightDiceNumber.png"),
              onPressed: () {
                changeDiceFace('Right');
              },
            ),
          ),
        ],
      ),
    );
  }
}
