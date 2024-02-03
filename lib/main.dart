import 'dart:math';

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


class BallPage extends StatefulWidget {
 
  const BallPage({super.key});

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int leftDiceNumbber =1;
     int rightBallNum =1;

     void changeBall(){

       setState(() {
                  rightBallNum = Random().nextInt(4)+1;
                  leftDiceNumbber = Random().nextInt(4)+1;

         });
     }
  @override
  Widget build(BuildContext context) {
     
    return Center(
      child: Row(
        children: <Widget> [
         Expanded(
         child:  TextButton(
          onPressed: () {
          changeBall();
            },
          child: Image.asset('images/ball$leftDiceNumbber.png'),
        ),
         ) ,
        Expanded(
         child:  TextButton(
          onPressed: () { 
            
        changeBall();
           },
          child: Image.asset('images/ball$rightBallNum.png'),
        ),
        ),
        ],
      ),
    );
  }
}