import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int counter=0;

  String gesture="No gesture";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('The button is clicked these many times'),
          Text('$counter'),

          GestureDetector(
            child: Text('$gesture'),
            onDoubleTap: (){
              gesture="Double tapped";
              setState(() {
                
              });
            },

            onLongPress: (){
              gesture="Long pressed";
              setState(() {
                
              });
            },
          )



        ],
      ),

      drawer: Drawer(),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            _increament();
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void _increament(){

    counter++;

  }


  Widget _textBuilder(String data){

    return Text(
      data,
      style: TextStyle(fontWeight: FontWeight.bold),

      );
  }
}