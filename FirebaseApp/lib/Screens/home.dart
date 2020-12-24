import 'package:FirebaseApp/Screens/datalist.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String fetchdata="empty";
  final FirebaseFirestore firestore= FirebaseFirestore.instance;
  TextEditingController _textfieldcontroller= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Firebase Crud"),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(

          children: [

            Row(
              children: [
                _createButton(), _readButton() ,_deleteButton()
              ],

             

            ),

            Text(fetchdata),

            _textField(),

            _updateButton(),

            DataList()
          ],

        ),
      ),
      
    );
  }



  Widget _textField(){

    return TextField(
      controller: _textfieldcontroller,
    );
  }

  Widget _updateButton(){

    return _btn(btnName: "Update", onPressed: (){
      _update();
    });
  }

Widget _createButton(){
  return _btn(btnName: "Create", onPressed: (){
    _create();
  });
}

Widget _readButton(){
  return _btn(btnName: "Read", onPressed: (){
    _read();
  });
}

Widget _deleteButton(){
  return _btn(
    btnName: "Delete",
    onPressed: (){
      _delete();
    }
  );
}

  Widget _btn({@required String btnName, @required Function onPressed} ){

    return MaterialButton
    (
      onPressed: (){
        onPressed();
      },

      child: Text(btnName,style: TextStyle(color: Colors.white),),

      color: Colors.green,
    );
  }

  _create() async {

   
    Map<String,dynamic> data= {
      "email":"user1@user.com",
      "phone" : "9827366444",
      "age" : "20",
      "address" : "kathmandu"
    };

    await firestore.collection("users").doc(DateTime.now().toIso8601String()).set(data);

    // await firestore.collection("users").doc("1").set(data); //if collection is not there then it will create automatically
  }

  _read()async{

    // DocumentSnapshot docSnap=await firestore.collection("users").doc("1").get();

    // fetchdata=docSnap.data().toString();
    // setState(() {
      
    // });

    //above can be used only in case of 1 document

    //below can be used in case of more than 1 documents

    QuerySnapshot qsnap = await firestore.collection("users").get();
    
    List<QueryDocumentSnapshot> qdocsnaplist= qsnap.docs;

    for(QueryDocumentSnapshot each in qdocsnaplist){

      print(each.data());

    }



  }

  _update()async{

    firestore.collection("users").doc("1").update({
      "address": _textfieldcontroller.text
    });
  }

   _delete() async {
    await firestore.collection("users").doc("1").delete();
  }
}