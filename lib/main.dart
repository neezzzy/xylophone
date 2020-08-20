import 'dart:ui';

import 'package:flutter/material.dart';
// import in the begining of the file
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void playSound(String noteName) {
    final player = AudioCache();
    player.play('$noteName.wav');
  }

  Expanded buildKey({Color color, String key}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound('$key');
        },
      ),
    );
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
          buildKey(key: 'a', color: Colors.red),
          buildKey(key: 'b', color: Colors.orange),
          buildKey(key: 'c', color: Colors.yellow),
          buildKey(key: 'd', color: Colors.green),
          buildKey(key: 'f', color: Colors.blue),
          buildKey(key: 'g', color: Colors.teal),
          buildKey(key: 'e', color: Colors.purple),
        ],
      )),
    ));
  }
}
