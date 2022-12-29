// ***** DO READ THE COMMENTS ITS IMPO *****
// To run it put this file under lib folder in flutter project.
 
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp( // Default MaterialApp to run in AVD 
  home: project_name(), // Change the 'project_name' name
));

// Change the 'project_name' name
class project_name extends StatelessWidget { // For more info on StatelessWidget ->  https://api.flutter.dev/flutter/widgets/StatelessWidget-class.html
  const id_project({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold( // // For more info on Scaffold -> https://api.flutter.dev/flutter/material/Scaffold-class.html
      appBar: AppBar( // AppBar is the top bar in a mobile
        title: Text('Title Bar'), // Change the title bar according your choice
      ),
    );
  }
}