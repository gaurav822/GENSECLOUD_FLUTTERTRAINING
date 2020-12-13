import 'package:flutter/material.dart';

class DrawerData extends StatefulWidget {
  @override
  _DrawerDataState createState() => _DrawerDataState();
}

class _DrawerDataState extends State<DrawerData> {
  bool checkbox=false;
  bool radioValue=false;
  double sliderValue=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(),
      body: Column(
        children: [

          Text('Please Choose your Skills', style:TextStyle(color: Colors.blue,fontWeight: FontWeight.bold, fontSize: 20),),


          Row(
            children: [
              _CheckboxReturn(false),
              Text('Flutter')
            ],
          ),
          Row(
            children: [
              _CheckboxReturn(false),
              Text('ReactJS')
            ],
          ),
          Row(
            children: [
              _CheckboxReturn(false),
              Text('ReactNative')
            ],
          ),


          Radio(
            value: radioValue,
            groupValue: true,
            onChanged: (value){
              setState(() {
                radioValue=value;
              });
            },
          ),


          Slider(
            value: sliderValue, 
            onChanged: (value){
              setState(() {
                sliderValue=value;
              });
            }
            )

          
          
          
        ],
      ),
    );
  }

  Widget _CheckboxReturn(bool checkbox){

    return Checkbox(
            value: checkbox, 
            onChanged: (value){
              
              setState(() {
                checkbox=value;
              });

            });
  }
}