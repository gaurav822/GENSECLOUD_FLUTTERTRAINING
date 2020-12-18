import 'package:SettingsPage/Screens/settings_tile.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  double height;
  double width;
  @override
  Widget build(BuildContext context) {
    height=MediaQuery.of(context).size.height;
     width=MediaQuery.of(context).size.width;
    return Scaffold(

      appBar: _appBar(),

      body: _body(),
      
    );
  }

  Widget _appBar(){

    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.grey.shade200,
      elevation: 2,

      title: _appbarTitle(),
    
    );
  }

  Widget _appbarTitle(){

     OutlineInputBorder border= OutlineInputBorder(

            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(color: Colors.grey));

    return SizedBox(

          height: height*.06,
          child: TextField(
          textAlign: TextAlign.center,
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            color: Colors.blue,
            

          ),
          hintText: "Search Settings",
          enabled: true,
          filled: true,

          fillColor: Colors.white,

          
          enabledBorder: border),

        ),
    );
  }


  Widget _body(){

    return ListView(
      children: [

        SettingsTile(),

      ],
    );
  }
}