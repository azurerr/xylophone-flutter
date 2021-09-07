import 'package:flutter/material.dart';

//import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }
//Expanded buildKey({Color color, int soundNumber}) {
  Expanded buildKey(String keyColor, int soundNumber) {
    return Expanded(
      child: FlatButton(
        color: Colors.$keyColor,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    ),
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.black,
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                //buildKey(color: Colors.red, soundNumber: 1),
                buildKey(red, 1),
                buildKey(orange, 2)
                buildKey(yellow, 3)
                buildKey(green, 4)
                buildKey(teal, 5)
                buildKey(blue, 6)
                buildKey(purple, 7)
              ]
          ),
      ),
    ),);
  }
}
