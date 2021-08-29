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
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    playMusic(1);
                  },
                  color:Colors.purple,
                  child:Container(),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    playMusic(2);
                  },
                  color:Colors.indigo,
                  child:Container(),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    playMusic(3);
                  },
                  color:Colors.blue,
                  child:Container(),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    playMusic(4);
                  },
                  color:Colors.green,
                  child:Container(),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    playMusic(5);
                  },
                  color:Colors.yellow,
                  child:Container(),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    playMusic(6);
                  },
                  color:Colors.orange,
                  child:Container(),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    playMusic(7);
                  },
                  color:Colors.red,
                  child:Container(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
