import 'package:FirebaseApp/Screens/googlesignin.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Home Page"),

        actions: [
          _signoutButton()
        ],
      ),

      body: _body(),
      
    );
  }

  Widget _body(){

    return Column();
  }

  Widget _signoutButton(){
    return IconButton(icon: Icon(Icons.power_settings_new), onPressed: (){
      _signOut();
    },color: Colors.red,);
  }

  _signOut()async{

    FirebaseAuth firebaseAuth=FirebaseAuth.instance;
    await firebaseAuth.signOut();
    Get.off(SignIn());
    // Get.off(SignIn());
  }

}