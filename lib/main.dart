import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(MaterialApp(home: Scaffold(
    backgroundColor: Colors.teal,
    appBar: AppBar(
      title: Center(child: Text('Magic_8_Ball')),
      backgroundColor: Colors.teal[100],
    ),
    body: MagicBall(),
    ),
    ),
  );
}

class MagicBall extends StatefulWidget {
  const MagicBall({super.key});

  @override
  State<MagicBall> createState() => _MagicballState();
}

class _MagicballState extends State<MagicBall> {
  var changetext = 1;


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton (
              onPressed: (){
                setState(() {
                  changetext = Random().nextInt(5) + 1;
                });
              },
              child:Image.asset('images/ball$changetext.png'),),
          ),
        ],
      ),
    );
  }
}