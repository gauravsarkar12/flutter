import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget { // StatefulWidget
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  
  void getData() async { // Asynchronous Code

    // Simulate network resource for a username
    String username = await Future.delayed(Duration(seconds: 3), ()  {
      return 'username called';
    });

    // Simulate network resource to get bio of the username
    String bio = await Future.delayed(Duration(seconds: 2), () {
      return 'bio called';
    });

    print('$username - $bio'); // Calling out the functions
  }
  

  @override
  void initState() {
    super.initState();
    getData();
    print('statement');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
    );
  }
}
