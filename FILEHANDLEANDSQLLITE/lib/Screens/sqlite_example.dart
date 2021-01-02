import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

class SQlite extends StatefulWidget {
  @override
  _SQliteState createState() => _SQliteState();
}

class _SQliteState extends State<SQlite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("SQL Lite Example"),

         ),

         body: _body(),
      
    );
  }

  Widget _body(){

    return Column(
      children: [
        _insertBtn(),
        _readBtn(),
        _updateBtn(),
        _deleteBtn()
      ],
    );
  }

  Widget _insertBtn(){
    return MaterialButton(
      onPressed: (){
        _insert();
      },
      child: Text("Insert"),
      color: Colors.green,
      );
  }

  Widget _readBtn() {
    return MaterialButton(
      onPressed: () async{
        Database database= await _openDB();
        List result=await database.query("user");
        print(result);

      },
      child: Text("Read"),
      color: Colors.green,
      );
  }

  Widget _updateBtn(){
    return MaterialButton(
      onPressed: ()async{
        Database database= await _openDB();
        await database.update("user", {"id":2}, where: 'id=?', whereArgs: [1]);
        print("data updated");
      },
      child: Text("Update"),
      color: Colors.green,
      );
  }

  Widget _deleteBtn(){
    return MaterialButton(
      onPressed: ()async{
        Database database= await _openDB();
        database.delete("user",where: "id=?",whereArgs: [2]);
        print("data deleted");
      },
      child: Text("Delete"),
      color: Colors.green,
      );
  }

  _insert()async{
    Database database= await _openDB();
    Map<String,dynamic> userData ={
      "id":1,
      "firstname": "Gaurav",
      "lastname": "Kathmandu"  // use same name as column name
    };
    await database.insert("user", userData);
    print("data inserted");
  }

  Future<Database>_openDB() async{
    return openDatabase(await getDatabasesPath()+"/my_db.db");
  }
}