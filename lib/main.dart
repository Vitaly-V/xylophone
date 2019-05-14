import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Widget _buildButton(Color color, int soundNumber) {
    final player = AudioCache();
    final sound = 'note$soundNumber.wav';
    return FlatButton(
      child: Container(),
      color: color,
      onPressed: () {
        player.play(sound);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(children: [
            _buildButton(Colors.red, 1),
            _buildButton(Colors.orange, 2),
            _buildButton(Colors.yellow, 3),
            _buildButton(Colors.green, 4),
            _buildButton(Colors.teal, 5),
            _buildButton(Colors.blue, 6),
            _buildButton(Colors.purple, 7),
          ]),
        ),
      ),
    );
  }
}
