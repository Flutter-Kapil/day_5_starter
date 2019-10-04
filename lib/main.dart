import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XyloPhone());
Widget _btn(Color col, int number) {
  return Expanded(
    child: FlatButton(
      color: col,
      child: Text(""),
      onPressed: () {
        AudioCache player = AudioCache();
        player.play('note$number.wav');
      },
    ),
  );
}

class XyloPhone extends StatelessWidget {
//  static AudioCache player = AudioCache();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              _btn(Colors.red, 1),
              _btn(Colors.orange, 2),
              _btn(Colors.yellow, 3),
              _btn(Colors.green, 4),
              _btn(Colors.blue, 5),
              _btn(Colors.deepPurple, 6),
              _btn(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
