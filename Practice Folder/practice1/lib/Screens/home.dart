import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        actions: [
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.call,
            ),

            SizedBox(
              width: 20,
            ),

            Icon(
              Icons.video_call
            )

          
        ],
        title: Text("This is my title"),
      ),
      body: Column(
      children: [
        TextField(),
        TextField(),
        RaisedButton(
          onPressed: (){},
          elevation: 10,
          child: Text('Raised Button'),
        ),
        FlatButton(
          onPressed: (){},
          child: Text("Flat Button"),
          color: Colors.blue,
          
        ),
        Image.network(
          'https://picsum.photos/250?image=9',
          width: 150,
          height: 150,
        ),

        FloatingActionButton(
          onPressed: (){},
          autofocus: true,
          child: Icon(
            Icons.add,
            color: Colors.black,
            ),
        ),
      


      ],
      ),
      backgroundColor: Colors.white,
  
    );
  }
}