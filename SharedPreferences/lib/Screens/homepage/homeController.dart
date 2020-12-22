import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePageController extends GetxController{

  final TextEditingController textFieldController= TextEditingController();

  save() async{
    SharedPreferences preferences = await SharedPreferences.getInstance();// object to save and load data
    String value= textFieldController.text;

    bool isSaved = await preferences.setString("enteredText", value);

    if(isSaved){

      textFieldController.clear();
    }
  }

  load()async {

    SharedPreferences pref = await SharedPreferences.getInstance();

    String loadedValue= pref.getString("enteredText");
    textFieldController.text=loadedValue;
   
  }

  clear() async {

    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.clear();
     // pref.clear()  to clear the preferences manually from code

  }

}