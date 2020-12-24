import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPageController extends GetxController{

  final TextEditingController emailField = TextEditingController();
  final TextEditingController passwordField = TextEditingController();


  save()async{

    SharedPreferences preferences = await SharedPreferences.getInstance();

    String email = emailField.text;
    String pass=   passwordField.text;
    
    preferences.setString('enteredemail', email);
    preferences.setString('enteredpassword', pass);
    emailField.clear();
    passwordField.clear();

  }

  loadPassword() async {

    
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String loadedpassword= preferences.getString("enteredpassword");

    return loadedpassword;
  

  }

   loadEmail() async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String loadedemail= preferences.getString("enteredemail");

  }



  clear() async {

    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.clear();
     // pref.clear()  to clear the preferences manually from code
  }
  
}