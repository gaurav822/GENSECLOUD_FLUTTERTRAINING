import 'package:flutter/material.dart';

class MySettingsTile extends StatelessWidget {

  IconData iconData;
  Color iconBackgroundcolor;
  final double tileWidth,tileHeight;
  final String title,subtitle;
  MySettingsTile({@required this.tileWidth,@required this.tileHeight, @required this.title,@required this.subtitle, @required this.iconData, @required this.iconBackgroundcolor});
  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.symmetric(horizontal: 5,vertical: 5),

      width: tileHeight,
      height: tileHeight,

      decoration: BoxDecoration(
        // color: Colors.orange
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            spreadRadius: 0.5,
            blurRadius: 0.8,
            offset: Offset(
              1,1
            ),
          )
        ],
      ),

      child: Padding(
        padding: const EdgeInsets.only(left:20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

          _myIcon(),

          SizedBox(
            width: 15,
          ),

          _settingsMenu(),

        ],
        ),
      ),
      

    );
  }

  Widget _settingsMenu(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,

      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Text(title,
        style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
        
        ),
        Text(subtitle)
      ],

    );
  }

  Widget _myIcon(){

    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color:iconBackgroundcolor,
        shape: BoxShape.circle,
      ),
      
      child: Icon(
        iconData,
        color: Colors.white,
        
      ),
    );
  }
}