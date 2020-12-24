import 'package:flutter/material.dart';

class StatefulApp extends StatefulWidget {
  @override
  _StatefulAppState createState() => _StatefulAppState();
}

class _StatefulAppState extends State<StatefulApp> {
  int _counter=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(),

      body: Center(
        child: Transform.scale(
          scale:4,
          child: Text('$_counter',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),),
      ),

      floatingActionButton: FloatingActionButton(

        child: Icon(Icons.add),
        onPressed: (){

          _counter++;
          setState(() {
            
          });

        },
      ),
      
    );
  }
}