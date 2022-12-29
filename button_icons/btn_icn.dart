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
      body:Center(
        // IconButton
        child: IconButton(
          onPressed: () {
            print('You clicked me!');
          },
          icon: Icon(Icons.alternate_email),
          color: Colors.amber,
        ),


        // Button in Icons
        // child: ElevatedButton.icon(
        //   style: ElevatedButton.styleFrom(
        //     primary: Colors.amber, // background
        //     onPrimary: Colors.black, // foreground
        //   ),
        //     onPressed: () {},
        //     icon: Icon(
        //       Icons.visibility_outlined,
        //     ),
        //     label: Text('Quote Me'),
        //   ),
        
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
