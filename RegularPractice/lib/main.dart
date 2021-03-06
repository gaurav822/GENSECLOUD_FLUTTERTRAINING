import 'package:RegularPractice/Screens/Shared%20Preferences/homepage.dart';
import 'package:RegularPractice/Screens/Stateful/mystatefulapp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.white,
    systemNavigationBarColor: Colors.blue,
    statusBarBrightness: Brightness.dark
    

  ));

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StatefulApp(),
      debugShowCheckedModeBanner: false,
      routes: {"/homepage": (context)=> HomePage()}
    );
  }
}