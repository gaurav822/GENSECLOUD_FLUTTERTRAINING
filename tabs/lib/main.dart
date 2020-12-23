import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tabs/home/bottomnavview.dart';
import 'package:tabs/home/homepage.dart';


void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.blue
  ));
  runApp(MaterialApp(

    home: BottomNavView(),
    debugShowCheckedModeBanner: false,
  ));
}

