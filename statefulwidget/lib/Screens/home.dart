import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {  // _ at beg repreents class in private
String mystr="mydata";

String gesture="no gesture provided";

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: Column(
      children: [
        
        GestureDetector(        // can be used to wrap text for click events
          onTap: (){
            print("working");
            handleGesture("One tap");

          },
          onLongPress: (){
            handleGesture("On Long press");
          },

          onDoubleTap: (){
            handleGesture("On double tap");
          },

          child: Text("Provide gesture here"),
        ),
        RaisedButton(
          onPressed: (){
            mystr="data changed";
            print(mystr);
            setState(() {}); //this helps to reflect in UI
          },

          child: Text('click me'),
                  ),

        Row(
          children: [
            Text("Gesture status:", style: TextStyle(fontWeight: FontWeight.bold),),
            Text(gesture)
          ],
        ),


      ],
      
      ),

    );
  }

  void handleGesture(providedGesture){

    setState(() {
              gesture=providedGesture;    });

          }

}











// JUST TO SHOW ON CLICK WONT CHANGE DATA ON UI WITH STATELESS WIDGET
class  MyStateless extends StatelessWidget {
  String mystr="mydata";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: Column(
      children: [
        Text(mystr),
        RaisedButton(
          onPressed: (){
            mystr="data changed";
            print(mystr);
          },

          child: Text('click me'),
                  )
      ],
      ),

    );
  }
}