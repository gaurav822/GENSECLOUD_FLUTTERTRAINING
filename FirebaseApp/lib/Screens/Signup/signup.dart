import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController emailController= TextEditingController();
   TextEditingController passwordController= TextEditingController();
    TextEditingController confirmpassController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("SignUp"),
        
      ),

      backgroundColor: Colors.white,

      body: _body(),
      
    );
  }

  Widget _body(){
    return ListView(
      children: [
        _field(emailController,"Email",false),
        _field(passwordController,"Password",true),
        _field(confirmpassController,"Confirm Password",true),

        _signupButton(),
      ],
    );
  }

  Widget _field(TextEditingController controller, String hintText,bool obs){
    InputBorder border= OutlineInputBorder();

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        obscureText: obs,
        controller: controller,
        decoration: InputDecoration(
          enabledBorder: border,
          focusedBorder: border, // to make sure border is aligned even after clicked
          isDense: true,
           hintText: hintText,
    
        ),
        
      ),
    );
  }

  Widget _signupButton(){
   return Padding(
     padding: const EdgeInsets.all(8.0),
     child: MaterialButton(
       color: Colors.purple.shade900,
       onPressed: (){
         if(passwordController.text==confirmpassController.text)
         _signup();
       },
       child: Text("Sign Up",style: TextStyle(color: Colors.white),),
     ),
   );
  }

  _signup() async {
    FirebaseAuth firebaseAuth=FirebaseAuth.instance;

    await firebaseAuth.createUserWithEmailAndPassword(email: emailController.text, password: passwordController.text);

    Get.back();
  }
}