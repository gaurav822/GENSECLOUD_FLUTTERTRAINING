import 'package:FirebaseApp/Screens/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  @override
  void initState() {
    Future.delayed(Duration(seconds: 1)).then((_) {
    FirebaseAuth firebaseAuth=FirebaseAuth.instance;
    if(firebaseAuth.currentUser!=null){
      print(firebaseAuth.currentUser);
      Get.off(HomePage());

    }

    });
    
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

    body: _body(),
      
    );
  }

  Widget _body(){

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _googleSigninButton()
        ],
      ),
    );
  }

  Widget _googleSigninButton(){

    return RaisedButton(onPressed: (){
      _gSignIn();
    },
    child: Text('Signin With Google'),);
  }

  _gSignIn() async{

    GoogleSignIn _googleSignIn = GoogleSignIn(
  scopes: [
    'email',
    'https://www.googleapis.com/auth/contacts.readonly',
  ],
  );

  GoogleSignInAccount signInAccount= await _googleSignIn.signIn();
  GoogleSignInAuthentication authentication= 
  await signInAccount.authentication;

  AuthCredential credential=GoogleAuthProvider.credential(
    idToken: authentication.idToken,
    accessToken: authentication.accessToken
  );

  FirebaseAuth firebaseAuth= FirebaseAuth.instance;

  UserCredential userCredential=

  await firebaseAuth.signInWithCredential(credential);

  print(userCredential.user.email);



  }
}