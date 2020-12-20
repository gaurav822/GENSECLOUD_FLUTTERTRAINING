import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class HomePage extends StatelessWidget {

  final HomeController homeController= HomeController();
  final  TextEditingController _textFieldController=TextEditingController();

  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Color Swapper"),
      ),

      body: Column(
        children: [
          TextField(

            controller: _textFieldController,
            onChanged: (value){
              homeController.updateValue(value);  
            },
            
          ),
          RaisedButton(onPressed: (){
            // print(_textFieldController.text);
            homeController.updateValue(_textFieldController.text);  
          },
          child: Text("Display"),),


          Obx(() =>Text(homeController.inputText))
          
         //Obx helps to rebuild to particular portion here Text will rebuild
        ],
      ),



      
      
    );
  }
}

class HomeController extends GetxController{

  RxString _inputText = 'Initial'.obs;   //means observable

  String get inputText => _inputText.value;

  updateValue(String str){
    _inputText.value=str;

  }

}