import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void setupWorldTime() async { // Function of new instance
    WorldTime instance = WorldTime(location: 'Kolkata', flag: 'india.png', url: 'Asia/Kolkata'); // getting the data
    await instance.getTime(); // awaiting the getTime() function and setting the time in the instance variable
    Navigator.pushReplacementNamed(context, '/home', arguments: { // pushing to a new router and mapping the value
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDaytime': instance.isDaytime,
    });
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime(); // Set time property
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body:
      Center(
        child: SpinKitWave(
          color: Colors.white,
          size: 50.0,
        ),
      )
    );
  }
}

