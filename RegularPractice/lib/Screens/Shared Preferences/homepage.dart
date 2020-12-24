import 'package:RegularPractice/Screens/Shared%20Preferences/logindatapagecontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  LoginPageController loginPageController=LoginPageController();
  @override
  Widget build(BuildContext context)  {

    return Scaffold(

      appBar: AppBar(
        title: Text("Home Page"),
        centerTitle: true,
      ),

      body: Column(
        children: [

          GetBuilder(
            init: LoginPageController(),
            builder: (LoginPageController loginpagecontroller)=>Text(""),
            id: "myid",
            ),
          Text("The password is...")
        ],
      ),
      
    );
  }
}