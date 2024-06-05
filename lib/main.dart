// ignore_for_file: unused_import, prefer_const_constructors_in_immutables, prefer_const_constructors, sort_child_properties_last

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(Xylo());
}

class Xylo extends StatelessWidget {
  Xylo({super.key});

  void ayam(int note) {
    final player = AudioPlayer();
    player.play(AssetSource("note$note.wav"));
  }

  Expanded buildKey(int a, Color warna, String note) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          ayam(a);
        },
        child: Text("Note $note"),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(warna),
          foregroundColor: MaterialStateProperty.all(Colors.white),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(1, Colors.red, "Note 1 / C"),
              buildKey(2, Colors.orange, "Note 2 / D"),
              buildKey(3, Colors.yellow, "Note 3 / E"),
              buildKey(4, Colors.blue, "Note 4 / F"),
              buildKey(5, Colors.green, "Note 5 / G"),
              buildKey(6, Colors.purple, "Note 6 / A"),
              buildKey(7, Colors.pink, "Note 7 / B"),
            ],
          ),
        ),
      ),
    );
  }
}
