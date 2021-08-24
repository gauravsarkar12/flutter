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
              // Row inside a column
       body: Column( 
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Text('Row inside a column',
                  style: TextStyle(
                    color: Colors.blue,  // Text color change
                  ),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              color: Colors.amberAccent,
              child: Text('One'),
            ),
            Container(
              padding: EdgeInsets.all(40.0),
              color: Colors.cyanAccent,
              child: Text('Two'),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton( onPressed: () {},
        child: Text('Click'),
        backgroundColor: Colors.teal,
      ),
    );
  }
}
