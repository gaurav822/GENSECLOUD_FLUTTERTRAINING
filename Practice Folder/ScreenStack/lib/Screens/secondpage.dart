import 'package:ScreenStack/Screens/firstpage.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Second Page'),
        centerTitle: true,
      ),

      body: Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            RaisedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> FirstPage()));
              },
              
              child: Text('Go to First Screen'),),

              RaisedButton(onPressed: (){

                Navigator.pushReplacementNamed(context, "/thirdPage"); //with replacement from stack
              },
              
              child: Text('Go to third Screen'),)


          ],
        ),
      ),
      
    );
  }
}