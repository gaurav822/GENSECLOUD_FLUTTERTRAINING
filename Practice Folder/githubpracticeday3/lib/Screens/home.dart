import 'package:flutter/material.dart';
import 'package:githubpracticeday3/Screens/multiplewidgets.dart';

class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String gesture="No gesture provided yet";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Day3 App'),
        centerTitle: true,
      ),

      drawer: Drawer(),

      body: Column(
        children: [

          GestureDetector(

            onTap: (){
              _GestureHandler("Tapped");
            },

            onLongPress: (){
              _GestureHandler("Long Pressed");
            },

            child: Text('$gesture'),
          ),

          RaisedButton
          (
            onPressed: (){
              _GestureHandler("Raised button clicked");
            }
            )


        ],
      ),
    );
  }

  void _GestureHandler(String providedgesture){
    setState(() {
      gesture=providedgesture;
    });

  }
}