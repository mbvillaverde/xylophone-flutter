import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: [
              _createSoundButton(color: Colors.red, soundNumber: 1),
              _createSoundButton(color: Colors.orange, soundNumber: 2),
              _createSoundButton(color: Colors.yellow, soundNumber: 3),
              _createSoundButton(color: Colors.lightGreen, soundNumber: 4),
              _createSoundButton(color: Colors.green, soundNumber: 5),
              _createSoundButton(color: Colors.blue, soundNumber: 6),
              _createSoundButton(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }

  Expanded _createSoundButton(
      {required Color color, required int soundNumber}) {
    final player = AudioPlayer();
    return Expanded(
      child: TextButton(
        onPressed: () async {
          await player.play(AssetSource('note$soundNumber.wav'));
        },
        child: Container(color: color),
        style: TextButton.styleFrom(padding: EdgeInsets.zero),
      ),
    );
  }
}
