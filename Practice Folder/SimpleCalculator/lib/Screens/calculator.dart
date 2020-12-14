import 'package:flutter/material.dart';

class MyCalculator extends StatefulWidget {
  @override
  _MyCalculatorState createState() => _MyCalculatorState();
}

class _MyCalculatorState extends State<MyCalculator> {
  int val=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: _AppBar(),

      drawer: Drawer(),

      body: Column(
        children: [


            Row(
              children: [
                _Buttons('7'),
                _Buttons('8'),
                _Buttons('9'),
                _Buttons('X'),
              ],
            ),
            Row(
              children: [
                _Buttons('4'),
                _Buttons('5'),
                _Buttons('6'),
                _Buttons('-'),

              ],
            ),
            Row(
              children: [
                _Buttons('1'),
                _Buttons('2'),
                _Buttons('3'),
                _Buttons('+'),

              ],
            ),
            Row(
              children: [
                _Buttons('C'),
                _Buttons('0'),
                _Buttons('.'),
                _Buttons('='),

              ],
            ),

            Text('Input:'),
            Text('$val'),


        ],
      ),
    );
  }

  Widget _AppBar(){
    return AppBar(
        title: Text('Simple Calculator App'),
        centerTitle: true,
      );
  }

  Widget _Buttons(String num){

    return Container(
      
      color: Colors.blue,
      child: FlatButton(
        onPressed: (){
          setState(() {
            input=input + num;
          });
        },
        child: Text(num),

        ),
    );
  
  }

  
}