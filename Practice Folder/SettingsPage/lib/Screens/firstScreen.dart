import 'package:SettingsPage/Screens/SettingsPage.dart';
import 'package:SettingsPage/Screens/secondScreen.dart';
import 'package:slider_button/slider_button.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('First Page'),
        actions: [
          _mywifiicon()
        ],
      ),

      body: Center(
        
        child: Column(

          mainAxisSize: MainAxisSize.min,
          
          children: [

            // CircularProgressIndicator(),

           
          RaisedButton(
            onPressed: (){
              // Navigator.push(context, MaterialPageRoute(builder: (context)=> SecondScreen() ) );

              Navigator.pushNamed(context, "/secondPage");
            },

            child: Text("Go to Second Screen"),
          ),


         RaisedButton(
           onPressed: () async{
             await Navigator.push(context, MaterialPageRoute(builder: (context)=> SettingsPage()));
             await Future.delayed(Duration(seconds: 5)); //after 3rd page is popped then only this will be callled
            _displayDialog(context);                      //after 5 second this will be called
           }, 
           
           child: Text('Go to Third page')
           ),

           _sliderButton(context),
            

          ],
        ),
      ),

      drawer: Drawer(),
      
    );
  }

  void _displayDialog(BuildContext context){
    showDialog(context: context,
    builder: (context){
      return SimpleDialog(
        backgroundColor: Colors.white,
        title: Text('Simple Dialog'),
      );
    });

  }

  Widget _mywifiicon(){

    // return ImageIcon(
    //   // NetworkImage(
    //   //   "" , image url link here
    //   // )
    // );
    return ImageIcon(
      AssetImage("assets/wifi.png"),
      color: Colors.purple,
      // size: 50,

    );
  }

  Widget _sliderButton(BuildContext context){

    return SliderButton(
      action: (){
        _displayDialog(context);
      },
      icon: Text("Hi"),

    );

  }
}