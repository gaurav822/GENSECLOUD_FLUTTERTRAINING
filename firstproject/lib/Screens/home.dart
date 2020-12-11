import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {  //HomePage is Separate Widget now
  @override
  Widget build(BuildContext context) {

    return Scaffold(

  

      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          SizedBox(
          width: 20,
          ),
          Icon(
            Icons.video_call,
            color: Colors.red,
          ),

          SizedBox(
            width: 30,

          ),

        ],
        title:Text("This is title"),
      ),    //AppBar() is built in it can be made custom

      // body: Column(
      //   children: [Container(height: 50,width: 100,color: Colors.purple),
      //   Container(height: 50,width: 100,color: Colors.green,)]
      // ),

      body: Column(
        children: [Container(height: 50,width: 100,color: Colors.purple),
        Container(height: 50,width: 100,color: Colors.green),
        Text("This is text", style: TextStyle(color: Colors.red),),
        TextField(),
        RaisedButton(
          onPressed: (){},
          elevation: 10,
          child: Text("Raised Button"),
          color: Colors.amber,
        ),
        FlatButton(
          onPressed: (){},
          child: Text("Flat button"),
          color: Colors.red,
        ),
        Image.network("", height: 50, width: 50,),

        Container(
          color: Colors.transparent,
          height: 200,
          width: 200,
          child: Stack(
            children: [
              Container(height: 200,width: 200,color: Colors.purple),
              Container(height: 150,width: 150,color: Colors.green), //keeps on overlapping
              Text("Im on top")

            ],
          ),
        ),

        Container(
        height: 50,
        width: 50,
        color: Colors.blue.shade200,
        ),

        ListView( // can be used instead of container to make scrollable

        )
        ],
      ),

    );

    // return Container(
    //   height: 100.5,
    //   width: 100.5,
    //   color: Colors.white,
    // );
  }
}