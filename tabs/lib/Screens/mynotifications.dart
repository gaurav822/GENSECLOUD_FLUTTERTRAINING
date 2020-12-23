import 'dart:math';

import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(

      children: [

        Flexible(child: Ink(
          color: Colors.red,
        ),
        flex: 1,),
        Flexible(child: Ink(
          color: Colors.white,
          child: Center(child: 
          Transform.rotate(
            angle: pi,
            child: Text("Good evening")),),
        ),
        flex: 10,)

      ],
      
    );
  }
}