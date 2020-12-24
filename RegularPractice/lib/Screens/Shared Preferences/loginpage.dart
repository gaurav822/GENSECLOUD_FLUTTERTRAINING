import 'package:RegularPractice/Screens/Shared%20Preferences/homepage.dart';
import 'package:RegularPractice/Screens/Shared%20Preferences/logindatapagecontroller.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';


class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
        centerTitle: true,

      ),

      body: _body(context),
    );
  }

  Widget _body(BuildContext context){

    return GetBuilder(
          init: LoginPageController(),
          builder: (LoginPageController loginpagecontroller) =>
        Column(
        children: [
          _textFieldBuilder("Enter Email address...", Icon(Icons.email),false,loginpagecontroller.emailField),
          SizedBox(
            height: 10,
          ),

          _textFieldBuilder("Enter your password...",Icon(Icons.lock),true,loginpagecontroller.passwordField),

          RaisedButton(
            onPressed: (){

              

          },

          child: Text("Login"),
          ),

          RaisedButton(
            onPressed: () {
              if(loginpagecontroller.emailField.text=="" || loginpagecontroller.passwordField.text==""){

                Fluttertoast.showToast(msg: "Email or Password Cannot be empty");

              }

              else{
                loginpagecontroller.save();
                
                Navigator.pushNamed(context, "/homepage");
              }
          },

          child: Text("Register"),
          )
        ],
      ),
    );
  }

  Widget _textFieldBuilder(String labeltext, Widget widget, bool obsecure, TextEditingController textEditingController ){

    OutlineInputBorder outlineInputBorder=OutlineInputBorder(
      borderRadius: BorderRadius.circular(100),
      borderSide: BorderSide(color: Colors.grey)
    );

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(

        controller: textEditingController,
        
        obscureText: obsecure,
        decoration: InputDecoration(
          
          
          prefixIcon:widget,
          labelText: labeltext,

          hintStyle: TextStyle(color: Colors.black,),

          enabled: true,

          border: InputBorder.none,

          enabledBorder: outlineInputBorder,

          filled: true,

        ),
      ),
    );

  }
}