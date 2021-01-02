import 'package:FILEHANDLEANDSQLLITE/Screens/home.dart';
import 'package:FILEHANDLEANDSQLLITE/Screens/sqlite_example.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sqflite/sqflite.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.blue,
      systemNavigationBarColor: Colors.blue
    ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  
  Widget build(BuildContext context) {
    _createDatabase();
    return MaterialApp(
      home: SQlite(),
      debugShowCheckedModeBanner: false,
    );

    
  }

    _createDatabase() async{
      String databasePath= await getDatabasesPath();
      String databaseFileName="my_db.db";
      int databaseVersion=1;
      openDatabase(databasePath+"/"+databaseFileName,onCreate: (db, version) {
        String createTableQuery="CREATE TABLE user(id INTEGER,firstname TEXT,lastname TEXT)";
        db.execute(createTableQuery);
        print("created user");
      },
      version: databaseVersion,
      onUpgrade: (db, oldVersion, newVersion) {},
      );
    }
}

