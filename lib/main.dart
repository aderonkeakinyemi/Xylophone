import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyXylophone());
}

class MyXylophone extends StatelessWidget {
  void myAudio(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Widget BuildKey(Color col, int k) {
    // Every line of code must end with semicolon;

    return Expanded(
      child: FlatButton(
        color: col,
        onPressed: () {
          myAudio(k);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                BuildKey(Colors.red, 1),
                BuildKey(Colors.blue, 2),
                BuildKey(Colors.green, 3),
                BuildKey(Colors.purple, 4),
                BuildKey(Colors.white, 5),
                BuildKey(Colors.yellow, 6),
                BuildKey(Colors.lime, 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
