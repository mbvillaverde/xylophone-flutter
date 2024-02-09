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
              _createSoundButton(Colors.red, 1),
              _createSoundButton(Colors.orange, 2),
              _createSoundButton(Colors.yellow, 3),
              _createSoundButton(Colors.lightGreen, 4),
              _createSoundButton(Colors.green, 5),
              _createSoundButton(Colors.blue, 6),
              _createSoundButton(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }

  Expanded _createSoundButton(Color buttonColor, int soundNumber) {
    final player = AudioPlayer();
    return Expanded(
      child: TextButton(
        onPressed: () async {
          await player.play(AssetSource('note$soundNumber.wav'));
        },
        child: Container(color: buttonColor),
        style: TextButton.styleFrom(padding: EdgeInsets.zero),
      ),
    );
  }
}
