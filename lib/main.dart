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
      body: Container(
        color: Colors.blueGrey.shade300,
      ),
    );
  }
}
