import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.indigo,
          appBar: AppBar(
            title: Text('Ask Me anything'),
            backgroundColor: Colors.blueGrey,
          ),
          body: magicBall(),
        ),
      ),
    );

class magicBall extends StatefulWidget {
  // const magicBall({super.key});

  @override
  State<magicBall> createState() => _magicBallState();
}

class _magicBallState extends State<magicBall> {
  int magicBallNumber = 1;
  void changeImage() {
    setState(() {
      magicBallNumber = Random().nextInt(4) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              changeImage();
            },
            child: Image.asset('images/ball$magicBallNumber.png'),
          ),
          TextButton(
            onPressed: () {
              changeImage();
            },
            child: Text(
              'Click ME',
              style: TextStyle(
                  color: Colors.deepOrange,
                  fontWeight: FontWeight.bold,
                  fontSize: 40),
            ),
          ),
        ],
      ),
    );
  }
}
