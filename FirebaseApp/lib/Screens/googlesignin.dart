import 'package:FirebaseApp/Screens/Signup/signup.dart';
import 'package:FirebaseApp/Screens/home.dart';
import 'package:FirebaseApp/Screens/homepageafterlogin.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  TextEditingController emailController= TextEditingController();
  TextEditingController passwordController= TextEditingController();


  @override
  void initState() {
    Future.delayed(Duration(seconds: 1)).then((_) {

      FirebaseAuth firebaseAuth=FirebaseAuth.instance;
      if(firebaseAuth.currentUser!=null){
      print(firebaseAuth.currentUser.email);
      Get.off(MyHomePage());
      }  else{}

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
          _signinForm(),
          _googleSigninButton(),
          Divider(),
          _signupButton()
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

    Get.off(MyHomePage());

  }

  _signupButton(){
    return RaisedButton(
      onPressed: (){
        Get.to(SignUp());
      },
      child: Text("Sign up",style: TextStyle(color: Colors.white),),

      color: Colors.green,
    );
  }

  Widget _signinForm(){

    return Container(
      child: Column(
        children: [
          _field(emailController,"Email",false),
          _field(passwordController,"Password",true),
          _signInButton()
        ],
      ),
    );

  }

  Widget _signInButton(){
    return MaterialButton(
      color: Colors.blue,
      onPressed: (){
        _signIn();
      },
      child: Text('Sign In',style: TextStyle(color: Colors.white),),
    );
  }

  _signIn()async{

    _showProgressDialog();

    FirebaseAuth firebaseAuth=FirebaseAuth.instance;
    try{
    await firebaseAuth.signInWithEmailAndPassword(email: emailController.text, password: passwordController.text);
    Get.off(MyHomePage());
    }

    catch(e){
      if(Get.isDialogOpen) Get.back();
      _showErrorDialog();
    }

  }

  _showProgressDialog(){
    Get.dialog(AlertDialog(
      content: Row(
        children: [
          Text("Please Wait"),
          SizedBox(
            width: 40,
          ),
          CircularProgressIndicator(),
        ],
      ),
    ));
  }

  _showErrorDialog(){

    Get.dialog(AlertDialog(
      content: Text("Error While Login"),
    ));
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
}