import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      const MaterialApp(
        home: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ask me Anything"),
        backgroundColor: Colors.blue[900],
      ),
      body: Container(
          color: Colors.blue,
          child: const Center(
            child: Ball(),
          )),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 0;
  int randomBall() => Random().nextInt(5) + 1;

  @override
  Widget build(BuildContext context) {
    ballNumber = randomBall();

    return TextButton(
      onPressed: () => setState(() {
        ballNumber = randomBall();
      }),
      child: Image.asset("images/ball$ballNumber.png"),
    );
  }
}
