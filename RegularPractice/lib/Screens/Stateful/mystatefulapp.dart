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

      floatingActionButton: buttons(),
      
    );
  }

  Widget buttons(){

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _fab(Icon(Icons.favorite), _increament),
        _fab(Icon(Icons.thumb_down), _decreament)
      ],
    );
  }

  Widget _fab(Widget widget, Function onPressed){

    return FloatingActionButton(
      onPressed: (){
        onPressed();
      },

      child: widget,

      );
  }

  _increament(){
    _counter++;
    setState(() {
      
    });
  }

  _decreament(){
    _counter--;
    setState(() {
    });
  }
}