import 'package:flutter/material.dart';

class SettingsTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

      color: Colors.blue,
      height: 40,

      child: Row(

        children: [
          Icon(Icons.wifi),
        ],

      ),
      
    );
  }
}