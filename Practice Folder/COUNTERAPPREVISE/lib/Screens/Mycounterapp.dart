import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyCounterApp extends StatefulWidget {
  @override
  _MyCounterAppState createState() => _MyCounterAppState();
}

class _MyCounterAppState extends State<MyCounterApp> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      backgroundColor: Colors.amber.shade100,
      body: _body(),

      floatingActionButton: _actionButtons(),

    );
  }

  Widget _body() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [



        Center(

          child: Text('This is your counter value: $_counter')
          ),


      ],
    );
  }

  Widget _appBar() {
    return AppBar(
      title: Text(
        'My Counter App',
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
      actions: [
        Icon(Icons.video_call),
        SizedBox(
          width: 20,
          height: 40,
        ),
        Icon(Icons.call)
      ],
    );
  }

  void _increament(){

    _counter++;
    setState(() {
      
    });

  }

  void _decreament(){

    _counter--;
    setState(() {
      
    });

  }

  Widget _actionButtons() {
    return Ink(
      color: Colors.transparent,
      child: Row(

        mainAxisAlignment: MainAxisAlignment.spaceAround,
      
        children: [
          _floatingbutton(() {
            _increament();
          },
              Icon(
                Icons.add,
                size: 30,
                color: Colors.green,
              )),
          _floatingbutton(() {
            _decreament();
          },
              Text(
                "-",
                style: TextStyle(color: Colors.red, fontSize: 40),
              ))
        ],
      ),
    );
  }

  Widget _floatingbutton(Function onPressed, Widget child){

    return FloatingActionButton(
      onPressed: onPressed,
      child: child,
      backgroundColor: Colors.white
      );

  }
}
