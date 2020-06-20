import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.red, title: Text("Ask Me Anthing!", style: TextStyle(fontSize: 30.0))),
      body:  Ball()
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int num =1;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(child: FlatButton(onPressed: (){
        setState(() {
          num= Random().nextInt(5)+1;
        });
        print(num); },child: Image.asset('images/ball$num.png')),
        ),
      ],
    );
  }
}



