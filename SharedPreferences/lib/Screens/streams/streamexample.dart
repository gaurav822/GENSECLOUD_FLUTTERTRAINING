import 'dart:async';

import 'package:flutter/material.dart';

class StreamExample extends StatelessWidget {
  final StreamController streamController= StreamController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    appBar: AppBar(
      title: Text("Streams"),
      centerTitle: true,
    ),

    body: _body(),
      
    );
  }

  Widget _body(){

   return Column(

     children: [
       _listenButton(),
       _addButton(),
       
     ],
   );

  }

  Widget _addButton(){

    String currentDateTime= DateTime.now().toIso8601String();

    return RaisedButton(
     onPressed: (){
       streamController.sink.add(currentDateTime);
     }, 
     child: Text("Add"),
     );
  }


  _listenButton(){

    return RaisedButton(
    onPressed: (){
      streamController.stream.listen((data) { 
        print(data);
      });
    },
    child: Text("Listen to changes"),
    );
  }
}


// Stream is like real life stream, we can add something in stream and listen to the changes

//First StreamController object need to be created to add or listen to the stream

//Useful in Firebase Concept

