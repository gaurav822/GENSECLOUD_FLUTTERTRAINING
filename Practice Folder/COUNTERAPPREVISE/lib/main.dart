
import 'package:COUNTERAPPREVISE/Screens/Mycounterapp.dart';
import 'package:flutter/material.dart';


void main(){

  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _homereturn(),
      debugShowCheckedModeBanner: false,
    );
  }


  Widget _homereturn(){

    return MyCounterApp();
  }
}