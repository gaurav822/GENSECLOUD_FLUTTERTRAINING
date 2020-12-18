import 'package:SettingsPage/Screens/SettingsPage.dart';
import 'package:SettingsPage/Screens/firstScreen.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('This is Second Screen'),

        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
        onPressed: (){
          Navigator.pop(context);
        },
        
        ),

      ),

      body: Column(
        children: [
           RaisedButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> FirstScreen() ) );
            },

            child: Text("Go to First Screen"),
          ),


         RaisedButton(
           onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=> SettingsPage()));
           }, 
           
           child: Text('Go to Third Screen')
           )
        ],
      ),
      
    );
  }
}