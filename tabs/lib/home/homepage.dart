import 'package:flutter/material.dart';
import 'package:tabs/Screens/myfeeds.dart';
import 'package:tabs/Screens/mynotifications.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return DefaultTabController(length: 2, 
    child: Scaffold(
      appBar: AppBar(
        title: Text("Facebook"),

        bottom: TabBar(tabs: [
        _feedtab(),_notificationtab(),
      ],
      )
      ),

      body: TabBarView(children: [
        Feeds(),NotificationPage()
      ],),

     
    )
    );
  }

  Widget _feedtab(){
    return Icon(Icons.chrome_reader_mode,
    color: Colors.white,);
  }

  Widget _notificationtab(){
    return Icon(Icons.notifications);
  }
}