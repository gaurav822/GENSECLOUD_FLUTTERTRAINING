import 'package:flutter/material.dart';
import 'package:http/http.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        actions: [
          // myIcon(),
        ],
      ),

      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            RaisedButton(onPressed: (){

                _fetchfrombackend();

              },
              child: Text('Fetch Data from backend'),),

          ],
        ),
      ),

      drawer: Drawer(),
      
    );
  }

  void _fetchfrombackend() async{

    String url = "https://jsonplaceholder.typicode.com/posts";
    
    Response res = await get(url);  // capturing response from url using Response Class

    print(res.body);



  }

  // Widget myIcon(){
  //   return ImageIcon(
  //     AssetImage("assets/emoji.png")
  //   );
  // }
}