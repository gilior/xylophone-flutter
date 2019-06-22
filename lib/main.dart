import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  static AudioCache player = AudioCache();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              gen_btn(Colors.red, 1),
              gen_btn(Colors.orange, 2),
              gen_btn(Colors.yellow, 3),
              gen_btn(Colors.green, 4),
              gen_btn(Colors.teal, 5),
              gen_btn(Colors.blue, 6),
              gen_btn(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }

  Expanded gen_btn(Color color, int note) {
    return Expanded(
      child: FlatButton(
        color: color,
        child: null,
        onPressed: () {
          player.play('note$note.wav');
        },
      ),
    );
  }
}
