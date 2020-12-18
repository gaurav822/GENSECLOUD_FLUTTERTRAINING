import 'package:SettingsPage/Screens/networkcall.dart';
import 'package:SettingsPage/Screens/secondScreen.dart';
import 'package:flutter/material.dart';
import 'Screens/firstScreen.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    routes: {"/secondPage": (context) => SecondScreen()},  //used for navigating pages
    home: SimpleNetworkCall(),
    debugShowCheckedModeBanner: false,
  );
  }
}

