import 'package:FirebaseApp/SRMStudentdatabase/mainpage.dart';
import 'package:FirebaseApp/Screens/googlesignin.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    home: SignIn(),
    debugShowCheckedModeBanner: false,

  ));
}
