import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: id_project(),
));


class id_project extends StatefulWidget { // To change the objects from its original state
  const id_project({Key? key}) : super(key: key);

  @override
  _id_projectState createState() => _id_projectState();
}

class _id_projectState extends State<id_project> {

  int classLevel = 0; // Input a value starting from 0

  @override
  Widget build(BuildContext context) {
    return Scaffold( // Main Screen
      backgroundColor: Colors.white, // Background Color of the screen
      appBar: AppBar(
        title: Text('Id Project'), // Title bar name
        // centerTitle: true, // To center the text in middle of the title bar
        backgroundColor: Colors.teal,  // Background color of title bar
        elevation: 0.0, // Title bar shadow
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() { // setState increase the widgets value in it
            classLevel += 1;
          });
        },
        child: Icon(Icons.add_circle_outline_outlined), // Icon shape and image of the button
        backgroundColor: Colors.teal,
      ),

      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0), // Padding the body from left, top, right, bottom.
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Alignment Horizontal
          children: [
            Center(
              child: CircleAvatar( // Round Shape Avatar
                backgroundImage: AssetImage('assets/liam.jpeg'), // Image Location
                radius: 40.0,
              ),
            ),
            Divider( // Putting a horizontal line
              height: 60.0,
              color: Colors.black,
            ),
            Text('NAME',
            style: TextStyle(
              color: Colors.black87,
              letterSpacing: 1.0,
            ),
            ),
            SizedBox(height: 4.0), // Spacing between two object
            Text('Liam T.',
              style: TextStyle(
                color: Colors.indigo[800],
                letterSpacing: 1.0,
                fontSize: 29.0,
                fontWeight: FontWeight.bold,
              )
            ),
            SizedBox(height: 20.0), // Spacing between two object
            Text('CLASS',
              style: TextStyle(
                color: Colors.black87,
                letterSpacing: 1.0,
              ),
            ),
            SizedBox(height: 4.0), // Spacing between two object
            Text('$classLevel',
              style: TextStyle(
                color: Colors.indigo[800],
                letterSpacing: 1.0,
                fontSize: 29.0,
                fontWeight: FontWeight.bold,
              )
            ),
            SizedBox(height: 20.0), // Spacing between two object
            Row(
              // mainAxisAlignment: MainAxisAlignment.,
              children: [
                Icon(
                    Icons.email_rounded,
                    color: Colors.amber,
                ),
                SizedBox(width: 10.0), // Spacing between two object
                Text(
                  'liamtenent@yahoo.co.in',
                  style: TextStyle(
                    color: Colors.black87,
                    letterSpacing: 0.8,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
