import 'package:flutter/material.dart';

class MultipleWidget extends StatefulWidget {
  @override
  _MultipleWidgetState createState() => _MultipleWidgetState();
}

class _MultipleWidgetState extends State<MultipleWidget> {
  bool checkBoxValue = false;
  bool radioValue = true;
  double sliderValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: _Appbar(),


      body: _body(),

    
    );
  }

  Widget _eachButtonBuilder(String buttonText){

    return Container(

      alignment: Alignment.center,
      margin: EdgeInsets.all(15),
      height: 30,
      width: 30,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [BoxShadow()]),
      child: Text(buttonText),

    );
  }

  Widget _Appbar(){
    return AppBar(
        title: Text('Working with multiple Widgets'),
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
      );
  }

  Widget _body(){
    return Column(
        children: [

          for(int i=0;i<10;i++) _eachButtonBuilder(i.toString()),

          Checkbox(
            value: checkBoxValue,
            onChanged: (value) {
              checkBoxValue = value;
              setState(() {});
            },
          ),
          Radio(
              value: checkBoxValue,
              groupValue: true,
              onChanged: (value) {
                // setState(() {
                //   radioValue = value;
                // });
              }),
          Slider(
            activeColor: Colors.red,
            divisions: 5,
            max: 10,
            onChanged: (value) {
              setState(() {
                sliderValue = value;
              });
            },
            value: sliderValue,
          )

        ],
      );
  }
}