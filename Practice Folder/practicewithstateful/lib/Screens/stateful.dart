import 'package:flutter/material.dart';
import 'package:practicewithstateful/Screens/drawerdata.dart';

class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int counter=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

      title: Text('This is Practice App'),
      centerTitle: true,

      actions: [
        Icon(
          Icons.call,
          color: Colors.green,
          ),
          SizedBox(
            height: 10, 
            width: 20,
            ),

          Icon(
            Icons.video_call,
            color: Colors.green,
          ),
          SizedBox(height: 10, width: 10),

      ],
      ),

      body: Center(
        child: Column(

          mainAxisSize: MainAxisSize.min,

          children: [
    

            Text('The Counter Value is:',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold, fontSize: 20),),
            Text('$counter', style:TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 20),),

          
            
          

          ],

        ),
      ),

      drawer: Drawer(
        child: DrawerData(),
      ),

      floatingActionButton: _actionButtons(),


      // endDrawer: Drawer(),


    );
  }


  // Widget _textReturnFunction(String value){

  //   return Container(

  //     child: Text(value),

  //   );
  // }

  Widget _actionButtons(){

    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: (){
        _increament();
      },
    );
  }


  void _increament(){
    setState(() {
      counter++;
    });
  }

  void _decreament(){
    setState(() {
      counter--;
    });
  }




}