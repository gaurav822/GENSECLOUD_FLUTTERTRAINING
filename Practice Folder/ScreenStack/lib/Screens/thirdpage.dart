import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Third Page'),

        centerTitle: true,
      ),

      body: Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            RaisedButton(
              onPressed: (){
              },
              
              child: Text('Go to First Screen'),),

              RaisedButton(onPressed: (){},
              
              child: Text('Go to Second Screen'),)


          ],
        ),
      ),
      
    );
  }
}