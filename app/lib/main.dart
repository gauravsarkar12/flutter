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
       body: Row(
         children: [
           Expanded(
               child: Image.asset('assets/nature.jpeg'),
             flex: 6,
           ),
           Expanded(
             flex: 5,
             child: Container(
               padding: EdgeInsets.all(20.0),
               color: Colors.amber,
               child: Text('Box 1'),
             ),
           ),
           Expanded(
             flex: 6,
             child: Container(
               padding: EdgeInsets.all(20.0),
               color: Colors.cyan,
               child: Text('Box 2',
               textAlign: TextAlign.center,),
             ),
           ),
           Expanded(
             flex: 4,
             child: Container(
               padding: EdgeInsets.all(20.0),
               color: Colors.indigo,
               child: Text('Box 3'),
             ),
           )
         ],
       ),


       //// Row inside a column
       // Column(
       //    mainAxisAlignment: MainAxisAlignment.start,
       //    crossAxisAlignment: CrossAxisAlignment.end,
       //    children: [
       //      Row(
       //        children: [
       //          Text('Row inside a column.',
       //            style: TextStyle(
       //              color: Colors.blue,
       //            ),
       //          ),
       //          Text(' Another Line.')
       //        ],
       //      ),
       //      Container(
       //        padding: EdgeInsets.all(20.0),
       //        color: Colors.amberAccent,
       //        child: Text('One'),
       //      ),
       //      Container(
       //        padding: EdgeInsets.all(40.0),
       //        color: Colors.cyanAccent,
       //        child: Text('Two'),
       //      ),
       //    ],
       //  ),


      //// Column
      // Column(
      //   mainAxisAlignment: MainAxisAlignment.spaceAround,
      //   crossAxisAlignment: CrossAxisAlignment.stretch,
      //   children: [
      //     Container(
      //       padding: EdgeInsets.all(20.0),
      //       color: Colors.amberAccent,
      //       child: Text('One'),
      //     ),
      //     Container(
      //       padding: EdgeInsets.all(40.0),
      //       color: Colors.cyanAccent,
      //       child: Text('Two'),
      //     ),
      //     Container(
      //       padding: EdgeInsets.all(80.0),
      //       color: Colors.redAccent,
      //       child: Text('Three'),
      //     ),
      //   ],
      // ),


      // //Row
      // Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     Text('A Text'),
      //     ElevatedButton(
      //         onPressed: () {},
      //         child: Text('A button'),
      //         style: ElevatedButton.styleFrom(
      //           onPrimary: Colors.black,
      //           primary: Colors.amber
      //       )
      //     ),
      //     Container(
      //       color: Colors.cyan,
      //       padding: EdgeInsets.all(20.0),
      //       child: Text('Inside Container'),
      //     )
      //   ],
      // ),


      // Padding(
      //   padding: EdgeInsets.all(30.0),
      //   child: Text('Padding'),
      // ),

      ////Padding inside Container
      // Container(
      //   padding: EdgeInsets.all(20.0), // padding from all side
      //   //padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0), // padding from horizontal and vertical
      //   //padding: EdgeInsets.fromLTRB(10.0, 20.0, 30.0, 40.0), // padding from left. top, right, bottom
      //
      //   //Margin
      //   margin: EdgeInsets.all(20.0), // Margin around the item
      //
      //   color: Colors.blueGrey[100],
      //   child: Text('Container',
      //       style: TextStyle(
      //           color: Colors.indigo
      //       )
      //   )
      // ),

      //Center(

        //// IconButton
        // child: IconButton(
        //   onPressed: () {
        //     print('You clicked me!');
        //   },
        //   icon: Icon(Icons.alternate_email),
        //   color: Colors.amber,
        // ),


        //// Button in Icons
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
        
        //// Button
        // child: ElevatedButton(
        //   onPressed: () {
        //     print('There you go!');
        //   },
        //   child: Text('Click Me'),
        // ),

        // // Icons
        // child: Icon(
        //   Icons.visibility,
        //   color: Colors.redAccent,
        //   size: 50.0,
        // ),

        //// Images import
        // child: Image.asset('assets/nature.jpeg'),
        // child: Image.network('https://wallpaperaccess.com/full/3887508.jpg'),
      //),
      floatingActionButton: FloatingActionButton( onPressed: () {},
        child: Text('Click'),
        backgroundColor: Colors.teal,
      ),
    );
  }
}
