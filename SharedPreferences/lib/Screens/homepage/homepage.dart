import 'package:SharedPreferences/Screens/homepage/homeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Shared Preferences'),
      ),

      body: GetBuilder(
        init: HomePageController(),
        builder : (HomePageController homepageController)=>
               Column(
          children: [

            TextField(
              controller: homepageController.textFieldController,
            ),

            FlatButton(onPressed: (){
              homepageController.save();
            }, child: Text('Save'),color: Colors.blue,),


            FlatButton(onPressed: (){
              homepageController.load();
            }, child: Text('Load'),
            color: Colors.purple,),

          ],
        ),
      ),
      
    );
  }
}