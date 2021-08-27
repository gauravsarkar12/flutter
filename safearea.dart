import 'package:flutter/material.dart';
// import 'package:world_time/pages/home.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Text('Home Screen')), // SafeArea: A widget that insets its child by sufficient padding to avoid intrusions by the operating system.
    );
  }
}
