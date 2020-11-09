import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: noteButtons(),
          ),
        ),
      ),
    );
  }

  void playNote(int noteNumber) {
    // or as a local variable
    final player = AudioCache();

    // call this method when desired
    player.play('note$noteNumber.wav');
  }

  List<Widget> noteButtons() {
    return [
      [Colors.red, 1],
      [Colors.orange, 2],
      [Colors.yellow, 3],
      [Colors.green, 4],
      [Colors.teal, 5],
      [Colors.blue, 6],
      [Colors.purple, 7],
    ].map((element) {
      return Expanded(
        child: FlatButton(
          onPressed: () {
            playNote(element[1]);
          },
          color: element[0],
        ),
      );
    }).toList();
  }
}
