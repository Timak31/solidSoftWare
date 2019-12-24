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

  RandomColor _randomColor = new RandomColor();  
  Color _color = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: InkWell(
        child: Container(
          color: _color,
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
            _color = _randomColor.randomColor();
          }
        ),
      )
    );
  }
}