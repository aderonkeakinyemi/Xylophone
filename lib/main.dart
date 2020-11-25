import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  void myAudio(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('Xylophone'),
      ),
      body: Center(
        child: Column(
          children: [
            FlatButton(
              color: Colors.red,
              onPressed: () {
                print('clicked on it');
                myAudio(1);
              },
            ),
            FlatButton(
              color: Colors.green,
              onPressed: () {
                myAudio(2);
              },
            ),
            FlatButton(
              color: Colors.yellow,
              onPressed: () {
                myAudio(3);
              },
            ),
            FlatButton(
              color: Colors.orange,
              onPressed: () {
                myAudio(4);
              },
            ),
            FlatButton(
              color: Colors.purple,
              onPressed: () {
                myAudio(5);
              },
            ),
            FlatButton(
              color: Colors.black,
              onPressed: () {
                myAudio(6);
              },
            ),
            FlatButton(
              color: Colors.white,
              onPressed: () {
                myAudio(7);
              },
            ),
          ],
        ),
      ),
    ),
  ));
}
