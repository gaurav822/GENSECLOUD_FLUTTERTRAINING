import 'dart:convert';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  get http => null;

  @override
  void initState() {
    _configureFcm();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(child: Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                color: Colors.white,
                onPressed: (){
                  _sendNotification();
              },child: Text("Send test notification"),)
            ],
          ),
        ),),
      
    );
  }

  _configureFcm() async{
    FirebaseMessaging fcm=FirebaseMessaging();

    String deviceToken = await fcm.getToken();// repreents particular device

    print(deviceToken);



    fcm.configure(
      onMessage: (message){
        _handleonMessage(message);
      },

      onResume: (message){
        print(message);
      }
    );


  }

  _handleonMessage(Map message){
    Get.dialog(
      AlertDialog(
        title: Text(message['notification']['title']),
        content: Text(message['notification']['body']),
      )
    );
  }

  _sendNotification()async{

    FirebaseMessaging fcm=FirebaseMessaging();
    String url= "https://fcm.googleapis.com/fcm/send";

    String serverToken="AAAAlqwLtdY:APA91bFXEiYMj6-Nkfw4AcLuuaMrmGhg4kpeazosNSkinBHIK12ZegIAlLotjIdgJWHIp65-fLwHtmbXoiFzzSRoPu9aFqmZ5w_DZWJE9MPm4ku4yFzykjD6TZh-FGQG-CPAiEiYqJm0";

    Map<String,String> header= <String,String>{
       'Content-Type': 'application/json',
       'Authorization': 'key=$serverToken',
     };

     
    await post(
    url,
     headers: header,
     body: jsonEncode(
     <String, dynamic>{
       'notification': <String, dynamic>{
         'body': 'this is a body',
         'title': 'this is a title'
       },
       'priority': 'high',
       'data': <String, dynamic>{
         'click_action': 'FLUTTER_NOTIFICATION_CLICK',
         'id': '1',
         'status': 'done'
       },
       'to': await fcm.getToken(),
     },
    ),
  );
  }
}