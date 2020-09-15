import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildItem(Colors.red,1),
            buildItem(Colors.orange,2),
            buildItem(Colors.yellow,3),
            buildItem(Colors.green,4),
            buildItem(Colors.teal,5),
            buildItem(Colors.blue,6),
            buildItem(Colors.deepPurple,7),
          ],
        ),
      ),
    );
  }

  void playSound(int selectedSound) {
    final player = AudioCache();
    player.play("note$selectedSound.wav");
  }

  Widget buildItem(Color color, int selectedNumber) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(selectedNumber);
        },
        color: color
      ),
    );
  }
}
