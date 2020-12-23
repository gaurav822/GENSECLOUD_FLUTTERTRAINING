import 'package:flutter/material.dart';
import 'package:tabs/Screens/myfeeds.dart';
import 'package:tabs/Screens/mynotifications.dart';

class BottomNavView extends StatefulWidget {
  @override
  _BottomNavViewState createState() => _BottomNavViewState();
}

class _BottomNavViewState extends State<BottomNavView> {
  int _currentIndex = 0;
  List<Widget> pages=[Feeds(),NotificationPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _mybottomnavbar(),

      body: pages[_currentIndex],
    );
  }

  Widget _mybottomnavbar(){

    return BottomNavigationBar(
      onTap: (index){
        _currentIndex = index;
        setState(() {
          
        });
      },

      currentIndex: _currentIndex,
      
      
      
      items: [
        BottomNavigationBarItem(label: "News feed", icon: Icon(Icons.chrome_reader_mode)),
        BottomNavigationBarItem(label: "Notifications", icon: Icon(Icons.notifications))
      ]
      );
  }
}