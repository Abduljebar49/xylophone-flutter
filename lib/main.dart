import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded addExpandedKey(MaterialColor color, int soundNumber) {
    return Expanded(
      child: RaisedButton(
        onPressed: () {
          palySound(soundNumber);
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              addExpandedKey(Colors.red, 1),
              addExpandedKey(Colors.orange, 2),
              addExpandedKey(Colors.yellow, 3),
              addExpandedKey(Colors.green, 4),
              addExpandedKey(Colors.teal, 5),
              addExpandedKey(Colors.blue, 6),
              addExpandedKey(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }

  void palySound(int index) {
    final player = AudioCache();
    player.play('note$index.wav');
  }
}

addExpandedOneKey({MaterialColor color, int soundNumber}) {}
