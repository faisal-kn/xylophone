import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  void playMusic(int num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }

  Expanded buildrow(colour,soundNumber){
    return  Expanded(
      child: FlatButton(
        onPressed: () {
          playMusic(soundNumber);
        },
        color:colour,
        child:Container(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Center(child: Text('let\'s play some Music')),
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              buildrow(Colors.purple,1),
              buildrow(Colors.indigo,2),
              buildrow(Colors.blue,3),
              buildrow(Colors.green,4),
              buildrow(Colors.yellow,5),
              buildrow(Colors.orange,6),
              buildrow(Colors.red,7),
            ],
          ),
        ),
      ),
    );
  }
}
