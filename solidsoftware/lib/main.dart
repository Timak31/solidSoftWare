import 'dart:math';

import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter test excersice'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<Color> _colors = [Colors.white, Colors.yellow, Colors.amber, Colors.blue, Colors.cyan, Colors.green, Colors.indigo, Colors.lime, Colors.pink];
  Random _random = new Random();
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: InkWell(
        child: Container(
          color: _colors[_count],
          child: Center(
            child: Text(
              "Hey there",
              style: TextStyle(
                fontSize: 30.0
              ), 
            ),
          ),
        ),
        onTap: () => setState(
          () {
            _count = _random.nextInt(_colors.length);
          }
        ),
      )
    );
  }
}