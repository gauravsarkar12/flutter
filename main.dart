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
            onPressed: () {},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.amber),

          ),
            icon: Icon(
              Icons.mail
            ),
            label: Text('Mail Me'),
          ),
        
        // Button
        // child: ElevatedButton(
        //   onPressed: () {
        //     print('There you go!');
        //   },
        //   child: Text('Click Me'),
        // ),

        // Icons
        // child: Icon(
        //   Icons.visibility,
        //   color: Colors.redAccent,
        //   size: 50.0,
        // ),

        // Pictures import
        // child: Image.asset('assets/nature.jpeg'),
        // child: Image.network('https://wallpaperaccess.com/full/3887508.jpg'),
      ),
      floatingActionButton: FloatingActionButton( onPressed: () {},
        child: Text('Click'),
        backgroundColor: Colors.teal,
      ),
    );
  }
}
