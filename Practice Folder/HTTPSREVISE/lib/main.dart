import 'package:HTTPSREVISE/Screens/detailedPage.dart';
import 'package:HTTPSREVISE/Screens/homepage.dart';
import 'package:HTTPSREVISE/Screens/myapp.dart';
import 'package:flutter/material.dart';

void main(){

  runApp(MaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: false,

    routes: {
      "/details": (context)=> DetailedPage()
    },
  ));
}