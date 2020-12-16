import 'package:Basics_14Dec/Screens/settings.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Root Page'),
      ),


      body: Column(

        children: [
          IconButton(
            color: Colors.blue,
            icon:Icon (Icons.settings), 
            onPressed: (){

              Navigator.push(context, MaterialPageRoute(builder: (context)=> Settings() ));
            }
            ),
        ],
      ),
      
    );
  }
}