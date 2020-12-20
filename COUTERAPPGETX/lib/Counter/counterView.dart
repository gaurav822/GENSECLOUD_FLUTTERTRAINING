import 'package:COUTERAPPGETX/Counter/counterController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterApp extends StatelessWidget {
  CounterController counterController= CounterController(); //Get.put and Get.find are used to use in another page
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Counter App"),
        centerTitle: true,

        actions: [
          _getScreenSize()
        ],
      ),

      body: _body(),

      floatingActionButton: _floatingButton(),
      
    );
  }

  Widget _getScreenSize(){
    return IconButton(
      onPressed: (){
        Get.dialog(SimpleDialog(
          children: [
            Text("Screen height: ${counterController.getScreenSize().height}"),
            Text("Screen Width: ${counterController.getScreenSize().width}")
          ],
        ));
      },
      icon: Icon(Icons.info),
    );
  }

  Widget _body(){

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Text('You have pushed the button these many times'),
          Obx(() =>Text(counterController.counter.toString()))
        ],
      ),
    );
  }

  Widget _floatingButton(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.max,

      children: [

        _btn(
          buttonColor: Colors.green,
          onPressed: (){
            counterController.increamentCounter();

        }, icon: Icon(Icons.add)),

        SizedBox(
          width: 15,
        ),
        _btn(

          buttonColor: Colors.red,

          onPressed: (){
            counterController.decreamentCounter();
          }, icon: Icon(Icons.remove))

      ],
    );
  }

  Widget _btn({@required Function onPressed, @required Widget icon,@required Color buttonColor}){
    return FloatingActionButton(
          onPressed: onPressed,
          child: icon,
          backgroundColor: buttonColor,
      );
  
  }
}


