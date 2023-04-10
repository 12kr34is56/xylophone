import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('Sound Music system'),
        ),
        body: const Music_file(),
      ),
    ),
  );
}

class Music_file extends StatefulWidget {
  const Music_file({Key? key}) : super(key: key);

  @override
  State<Music_file> createState() => _Music_fileState();
}

class _Music_fileState extends State<Music_file> {

  void press(int soundnumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundnumber.wav'));
  }

  Expanded func(Color color, int soundnumber) {
    return Expanded(
      child: TextButton(
        // onPressed: () => press(soundnumber),
        onPressed: (){
          press(soundnumber);
        },
        // style: ButtonStyle(
        //   backgroundColor: MaterialStateProperty.all<Color>(Colors.color),
        style: TextButton.styleFrom(foregroundColor: color,backgroundColor: color),

        child: const Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: <Widget>[
          func(Colors.red, 1),
          func(Colors.orange, 2),
          func(Colors.yellow, 3),
          func(Colors.green, 4),
          func(Colors.teal, 5),
          func(Colors.blue, 6),
          func(Colors.purple, 7),
        ]);
  }
}
