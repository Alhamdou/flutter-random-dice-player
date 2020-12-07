import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red[900],
      appBar: AppBar(
        title: Text('Play Dice with me'),
        backgroundColor: Colors.blue,
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

int leftDiceNumber = 1;
int RightDiceNumber = 1;
void getshortcut() {
  leftDiceNumber = Random().nextInt(6) + 1;
  RightDiceNumber = Random().nextInt(6) + 1;
}

class _DicePageState extends State<DicePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    getshortcut();
                  });
                },
                child: Image.asset('images/dice$leftDiceNumber.png'),
              ),
            ),
            Expanded(
                child: FlatButton(
                    onPressed: () {
                      setState(() {
                        getshortcut();
                      });
                    },
                    child: Image.asset('images/dice$RightDiceNumber.png')))
          ],
        ),
      ),
    );
  }
}
