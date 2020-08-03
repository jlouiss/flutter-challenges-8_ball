import 'dart:math' show Random;

import 'package:flutter/material.dart';

void main() {
  runApp(EightBallApp());
}

class EightBallApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: BallPage());
  }
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade900,
        title: Text('Ask me anything'),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey.shade300,
      child: Center(
        child: Expanded(
          child: FlatButton(
            child: Image.asset('images/ball$ballNumber.png'),
            onPressed: () {
              setState(() {
                ballNumber = Random().nextInt(4) + 1;
              });
            },
          ),
        ),
      ),
    );
  }
}
