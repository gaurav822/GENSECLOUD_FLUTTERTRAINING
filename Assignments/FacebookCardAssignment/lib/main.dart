import 'package:FacebookCardAssignment/Screens/Myapp.dart';
import 'package:FacebookCardAssignment/Screens/detailedPage.dart';
import 'package:flutter/material.dart';

void main(){

  runApp(MaterialApp(
    home: MyFacebookApp(),
    debugShowCheckedModeBanner: false,
    routes: {
      "/details": (context)=> DetailedPage()
    },
  ));
}