import 'package:flutter/material.dart';

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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
//          flex: 1,
            child: FlatButton(
              child: Image.asset("images/dice6.png"),
              onPressed: () {
                print("Left button pressed");
              },
            ),
          ),
          Expanded(
//          flex: 2,
            child: FlatButton(
              child: Image.asset("images/dice1.png"),
              onPressed: () {
                print("Right button pressed.");
              },
            ),
          ),
        ],
      ),
    );
  }
}
