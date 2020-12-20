import 'package:COUTERAPPGETX/Counter/counterView.dart';
import 'package:COUTERAPPGETX/Screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(){

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: CounterApp(),
    );
  }
}