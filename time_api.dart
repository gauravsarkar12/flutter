import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getTime() async {  // Asynchronous Function using http package

    // Make the request
    Response response = await get(Uri.parse("http://worldtimeapi.org/api/timezone/Asia/Kolkata")); // API
    Map data = jsonDecode(response.body); // Decoding the json code
    // print(data);

    // get properties from data
    String datetime = data['datetime']; // collecting the date, time
    String offset = data['utc_offset'].substring(1,3); // collecting the offset and slicing it to (1,3)
    // print(datetime); // print the datetime
    // print(offset); // print the offset

    // crete DateTime object
    DateTime now = DateTime.parse(datetime); // object variable = Object.method(StringVariable_datetime) [Converting into a datetime object]
    now = now.add(Duration(hours: int.parse(offset))); // variable = method.function(duration(time: StringInInt(variable_offset)))
    print(now);
  }

  @override
  void initState() {
    super.initState();
    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Text('Loading Screen'),
      )
    );
  }
}

