import 'package:flutter/material.dart';

void main() => runApp(MaterialApp( 
  
  //Custom Color
  final delBtn = const Color(0xFFB4161B); // 0x: By default | FF: Full Opacity, 00: Full transperent | Hexcode(without #): B4161B | 
  
  home: project_name(), // Change the 'project_name' name
));

class project_name extends StatelessWidget {  // Change the 'project_name' name
  const id_project({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar( 
        title: Text('Title Bar'), 
      ), 
      child: ElevatedButton.icon( // Button
        onPressed: () {}, // Icon function
          icon: Icon(Icons.delete_outline), // Icon outlet
          label: Text('Your Text'),  // Label
        style: ElevatedButton.styleFrom(  // Button color change
          primary: Colors.white, // background
          onPrimary: delBtn, // foreground 
        ),
      ),
    ); 
  }
}
