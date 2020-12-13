import 'package:flutter/material.dart';

class MultipleWidget extends StatefulWidget {
  @override
  _MultipleWidgetState createState() => _MultipleWidgetState();
}

class _MultipleWidgetState extends State<MultipleWidget> {
  bool checkbox=false;
  bool radioValue=false;
  int sliderValue=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        centerTitle: true,
        title: Text("Working with multiple widget"),
      ),

      

      body: Column(
        children: [
          
          for(int i=0;i<5;i++) _eachButtonBuilder(i.toString()),

          Checkbox(
            value: checkbox, 
            onChanged: (value){
              checkbox=value;
              setState(() {
                
              });

          }),


          Radio(
            value: radioValue,
            groupValue: true,
            onChanged: (value){
              setState(() {
                radioValue=value;
              });
            },
          ),
          
          
        ],

  
      ),

    
      
      
    );
  }

  Widget _eachButtonBuilder(String buttonText){    // Functions that returns widget that can be beneficial
    return Container(
      alignment: Alignment.center,   //by default it is top left
      margin: EdgeInsets.all(15.0),
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow()]
      ),
      child: Text(buttonText),
    );

  }
}


// 3 ways sizedbox, margin or padding widget

//margin cannot be diret value

//Both decoration and color cannot be used together since color comes under decoration