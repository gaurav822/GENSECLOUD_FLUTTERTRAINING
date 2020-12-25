import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String fetchdata="empty";
  TextEditingController roll= TextEditingController();
  TextEditingController name= TextEditingController();
  TextEditingController section= TextEditingController();
  TextEditingController branch= TextEditingController();
  TextEditingController year= TextEditingController();
  TextEditingController cgpa= TextEditingController();
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      resizeToAvoidBottomPadding: false,

      appBar: AppBar(
        title: Text("SRM Student Database"),
        centerTitle: true,
      ),

      body: _body(),
      
    );
  }

  Widget _body(){

    return SingleChildScrollView(
          child: Column(

        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                _btn("Create",_create),
                _btn("Read",_read),
                _btn("Update",_update),
                _btn("Delete",_delete)
              ],
            ),

          ),

          _textField("Roll number",roll),
           _textField("Name",name),
            _textField("Section number",section),
             _textField("Branch number",branch),
              _textField("year number",year),
               _textField("cgpa number",cgpa),


               Text(fetchdata),

               _datalist(),

          
        ],
      ),
    );
  }

  Widget _btn(String text, Function onPressed){

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 0.012*Get.width),
      child: MaterialButton(
        color: text=="Delete"?Colors.red:Colors.blue,
        onPressed: (){
          onPressed();
        },

        child: Text(text,style: TextStyle(color: Colors.white),),
      ),
    );


  }

  Widget _textField(String hint, TextEditingController controller){

    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: TextField(
      
        controller: controller,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(color: Colors.green),
        ),
        
      ),
    );

  }

  _create()async{

    Map<String,dynamic> data={
      "roll":roll.text,
      "name":name.text,
      "section":section.text,
      "branch" : branch.text,
      "year":year.text,
      "cgpa":cgpa.text
    };

    await firestore.collection("SRM Students").doc(roll.text).set(data);
  }
  _read()async {

    DocumentSnapshot snapshot= await firestore.collection("SRM Students").doc("133").get();
    // fetchdata=snapshot.get("cgpa");  to get specific data
    // fetchdata=snapshot.data().toString(); // to get whole single data for particular person

    QuerySnapshot qsnap= await firestore.collection("SRM Students").get();

    List<QueryDocumentSnapshot> qdocsnap= qsnap.docs;

    for(QueryDocumentSnapshot each in qdocsnap){

      fetchdata=fetchdata+each.data().toString();
    }
    setState(() {
      
    });

  }

  _update()async{
    await firestore.collection("SRM Students").doc("133").update({
      "branch": branch.text,
      "year":year.text,
    });
  }

  _delete()async {
    await firestore.collection("SRM Students").doc("133").delete();
  }

  _datalist(){

    return Ink(
      color: Colors.yellow,
          child: SizedBox(

            height: 0.2*Get.height,
            width: Get.width,

            child: ListView(
              children: [
                Text("hello"),
                Text("hello"),
                Text("hello"),
                Text("hello"),
                Text("hello"),
                Text("hello"),
                Text("hello"),
                Text("hello"),
                Text("hello"),
                Text("hello"),
                Text("hello"),
                Text("hello"),
                Text("hello"),
                Text("hello"),
                Text("hello"),

              ],
            ),
        
      ),
    );
  }
  
}