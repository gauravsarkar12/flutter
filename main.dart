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
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        
        // Button in Icons
        child: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            primary: Colors.amber, // background
            onPrimary: Colors.black, // foreground
          ),
            onPressed: () {},
            icon: Icon(
              Icons.mail
            ), // Icon
            label: Text('Mail Me'),
          ), // ElevatedButton.icon
      ),
      floatingActionButton: FloatingActionButton( onPressed: () {},
        child: Text('Click'),
        backgroundColor: Colors.teal,
      ),
    );
  }
}
