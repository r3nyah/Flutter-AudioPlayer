import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Audio extends StatefulWidget {
  const Audio({Key? key}) : super(key: key);

  @override
  State<Audio> createState() => _AudioState();
}

class _AudioState extends State<Audio> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Audio Player on Flutter'),
        ),
        backgroundColor: Colors.orange[400],
        body: UI(context),
      ),
    );
  }
}

void playMusic(int musicNumber){
  final player = AudioCache();
  player.play('note$musicNumber.wav');
}

Widget userInterface({
  required int n,
  required Color color
}){
  return Expanded(
    child: MaterialButton(
      onPressed: (){
        playMusic(n);
      },
      color: color,
      child: const Text(''),
    ),
  );
}

Widget UI(BuildContext context){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      userInterface(n: 1,color: Colors.yellowAccent),
      userInterface(n: 2,color: Colors.greenAccent),
      userInterface(n: 3,color: Colors.redAccent),
      userInterface(n: 4,color: Colors.blueAccent),
      userInterface(n: 5,color: Colors.amberAccent),
      userInterface(n: 6,color: Colors.deepOrange),
      userInterface(n: 7,color: Colors.pinkAccent),
    ],
  );
}



