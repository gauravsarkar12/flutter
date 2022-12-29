import 'package:flutter/material.dart';

void main() {
  runApp(application());
}

// ignore: camel_case_types
class application extends StatelessWidget {
  const application({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stateless Widget',
      home: new Scaffold(
        body: Container(
          color: Colors.pink[900],
          child: Container(
            color: Colors.yellow[900],
            margin: EdgeInsets.all(30.0),
            child: Container(
              color: Colors.blue[900],
              margin: EdgeInsets.all(40.0),
              child: Container(
              color: Colors.teal[900],
              margin: EdgeInsets.all(50.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}