import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});
  void playSound(int input) {
    final player = AudioPlayer();
    player.play(AssetSource('note$input.wav'));
  }

  Expanded buildkey(Color color, int sound, String txt) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(color)),
        onPressed: () {
          playSound(sound);
        },
        child: Text(
          "$txt",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30.0),
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
            children: <Widget>[
              buildkey(Colors.red, 1, 'Play'),
              buildkey(Colors.deepPurple, 2, 'Play'),
              buildkey(Color.fromARGB(255, 34, 220, 40), 3, 'Play'),
              buildkey(Colors.orange, 4, 'Play'),
              buildkey(Colors.pink, 5, 'Play'),
              buildkey(Colors.cyanAccent, 6, 'Play'),
              buildkey(Colors.teal.shade900, 7, 'Play'),
            ],
          ),
        ),
      ),
    );
  }
}
