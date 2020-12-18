import 'package:flutter/material.dart';
import 'secondpage.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text('First Page'),
        centerTitle: true,
      ),

      body: Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            RaisedButton(
              onPressed: () {

                _Navigation(SecondPage(),context);
      
                
              },
              
              child: Text('Go to second Screen'),),

              RaisedButton(onPressed: () async {

               await Navigator.pushNamed(context, "/thirdPage");

               await Future.delayed(Duration(seconds: 5));

               _displayDialog(context); 


              },
              
              child: Text('Go to third Screen'),)


          ],
        ),
      ),

    
    );
  }

  Widget _Navigation(Widget mywidget, BuildContext context){

    Navigator.push(context, MaterialPageRoute(builder: (context)=> mywidget));

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
}