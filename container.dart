import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ganesh Optical Co'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Container(

        color: Colors.blueGrey[100],
        child: Text('Yo, Gaurav!', 
            style: TextStyle(
                color: Colors.indigo  // Changing the text color inside a body class
            )
        ),
      ),
      floatingActionButton: FloatingActionButton( onPressed: () {},
        child: Text('Click'),
        backgroundColor: Colors.teal,
      ),
    );
  }
}
