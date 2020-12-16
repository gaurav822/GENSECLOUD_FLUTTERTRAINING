import 'package:Basics_14Dec/Screens/settings_tile.dart';
import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  double height;
  double width;
  @override
  Widget build(BuildContext context) {
     height=MediaQuery.of(context).size.height;
     width=MediaQuery.of(context).size.width;
    return Scaffold(

      backgroundColor: Colors.white,

      appBar: _appBar(context),
      
      body: _body(),
      
    );
  }

  Widget _body(){

    return ListView(

      children: [

        MySettingsTile(
          tileWidth: width,
          tileHeight: height*.1,
          title: "Network & Internet",
          subtitle: "Wifi, mobile, data usage & hotspot",
          iconData: Icons.wifi,
          iconBackgroundcolor: Colors.blue,
        ),

         MySettingsTile(
          tileWidth: width,
          tileHeight: height*.1,
          title: "Connected Devices",
          subtitle: "Bluetooth, Cast, NFC",
          iconData: Icons.devices,
          iconBackgroundcolor: Colors.green.shade700,
        ),
         MySettingsTile(
          tileWidth: width,
          tileHeight: height*.1,
          title: "Network & Internet",
          subtitle: "Wifi, mobile, data usage & hotspot",
          iconData: Icons.devices,
          iconBackgroundcolor: Colors.blue,
        ),
         MySettingsTile(
          tileWidth: width,
          tileHeight: height*.1,
          title: "Network & Internet",
          subtitle: "Wifi, mobile, data usage & hotspot",
          iconData: Icons.wifi,
          iconBackgroundcolor: Colors.blue,
        ),
         MySettingsTile(
          tileWidth: width,
          tileHeight: height*.1,
          title: "Network & Internet",
          subtitle: "Wifi, mobile, data usage & hotspot",
          iconData: Icons.wifi,
          iconBackgroundcolor: Colors.blue,
        ),
         MySettingsTile(
          tileWidth: width,
          tileHeight: height*.1,
          title: "Network & Internet",
          subtitle: "Wifi, mobile, data usage & hotspot",
          iconData: Icons.wifi,
          iconBackgroundcolor: Colors.blue,
        ),
         MySettingsTile(
          tileWidth: width,
          tileHeight: height*.1,
          title: "Network & Internet",
          subtitle: "Wifi, mobile, data usage & hotspot",
          iconData: Icons.wifi,
          iconBackgroundcolor: Colors.blue,
        ),

         MySettingsTile(
          tileWidth: width,
          tileHeight: height*.1,
          title: "Network & Internet",
          subtitle: "Wifi, mobile, data usage & hotspot",
          iconData: Icons.wifi,
          iconBackgroundcolor: Colors.blue,
        ),
        



      ],


    );
  }

  Widget _appBar(BuildContext context){

    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: (){
          Navigator.pop(context);
        },

      ),
      backgroundColor: Colors.grey.shade200,
      elevation: 2,
      title: _mySearchBar(),
    );
  }


  Widget _mySearchBar(){
    OutlineInputBorder border= OutlineInputBorder(

            borderRadius: BorderRadius.circular(100),
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
}