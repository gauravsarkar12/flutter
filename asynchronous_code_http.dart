import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getData() async { // Asynchronous Code

    Response response = await get(Uri.parse('utl')); // Uri.parse: A Uri object is usually used to tell a ContentProvider what we want to access by reference.
    Map data = jsonDecode(response.body);
    print(data);
  }


  @override
  void initState() {
    super.initState();
    getData(); // Calling the function
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Loading Screen'),
    );
  }
}

