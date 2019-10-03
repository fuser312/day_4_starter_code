import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: DicePage(),
    ),
  );
}

  class DicePage extends StatefulWidget {
    @override
    _DicePageState createState() => _DicePageState();
  }
  
  class _DicePageState extends State<DicePage> {

    int leftDiceNumber = 1;
    int rightDiceNumber = 6;
    void modifyDice(){
      print("Left Dice Clicked");
      setState(() {
        leftDiceNumber = 1 + Random().nextInt(6);
        rightDiceNumber = 1 + Random().nextInt(6);
      });
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Roll the Dice'),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: FlatButton(
                  child: Image(
                    image: AssetImage("assets/dice$leftDiceNumber.png"),

                  ),
                  onPressed: modifyDice,
                ),
              ),
              Expanded(
                  flex: 1,
                  child: FlatButton(

                    child: Image(
                      image: AssetImage("assets/dice$rightDiceNumber.png"),
                    ),
                    onPressed: modifyDice,
                  )
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: modifyDice,
        ),
      );
  }
  



  }
  

