import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Center(
        
        // Button in Icons
        child: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            primary: Colors.amber, // background
            onPrimary: Colors.black, // foreground
          ),
            onPressed: () {}, // Icon Function
            icon: Icon(Icons.visibility_outlined), // Icon
            label: Text('Quote Me'), // Label
          ), // ElevatedButton.icon
      ),
      floatingActionButton: FloatingActionButton( onPressed: () {},
        child: Text('Click'),
        backgroundColor: Colors.teal,
      ), // FloatingActionButton
    ); // Scaffold
  }
}
