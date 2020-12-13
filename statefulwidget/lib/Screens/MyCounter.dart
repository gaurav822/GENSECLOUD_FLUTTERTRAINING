import 'package:flutter/material.dart';
import 'package:statefulwidget/Screens/multiplewidgets.dart';

class MyCounter extends StatefulWidget {
  @override
  _MyCounterState createState() => _MyCounterState();
}

class _MyCounterState extends State<MyCounter> {
  int _counterValue=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: _actionButtons(),
      appBar: AppBar(
        title: Text('Counter'),
        centerTitle: true,
      ),

      body: Center(child: Column(
        mainAxisSize: MainAxisSize.min,         // to make column in center
        children: [
          Text("you have pressed button these many times"),
          Text('$_counterValue'),

        ],
      )),
      
      drawer: Drawer(
        child: MultipleWidget(),
      ), 
      
      endDrawer: Drawer(),//click on Text and wrap with center

      


      
    );
  }

  _increament(){
    // _counterValue++;   or this can be placed outside setstate
    setState(() {
      _counterValue++;
    });
    
  }

  _decreament(){
    // _counterValue++;   or this can be placed outside setstate
    setState(() {
      _counterValue--;
    });
    
  }

  Widget _actionButtons(){
     return FloatingActionButton(
        backgroundColor: Colors.red.shade500,
        
        onPressed: (){
          _increament();

        },
        child: Icon(
          Icons.add,
          size: 50,
          ),
      );
  }
}