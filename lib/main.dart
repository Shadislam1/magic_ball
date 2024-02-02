import 'package:flutter/material.dart';

void main() {
  runApp(
     MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Center(
            child: Text('Magic Ball'),
            ),
        ),
        body: BallPage(),

      ),
     ),
  );
}

class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget> [
         Expanded(
        child:  Image.asset('images/ball1.png'),
         ) ,
         Expanded(
        child:  Image.asset('images/ball2.png'),
         ) ,
        ],
      ),
    );
  }
}