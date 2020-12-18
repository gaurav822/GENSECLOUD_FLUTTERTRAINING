import 'package:flutter/material.dart';
import 'package:http/http.dart';

class SimpleNetworkCall extends StatefulWidget {
  @override
  _SimpleNetworkCallState createState() => _SimpleNetworkCallState();
}

class _SimpleNetworkCallState extends State<SimpleNetworkCall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Example Network Call'),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,

          children: [
            RaisedButton(onPressed: (){

              _fetchfrombackend();

            },
            child: Text('Fetch Data from backend'),),

          ],
      ),),
      
    );
  }

  void _fetchfrombackend() async{

    String url = "https://jsonplaceholder.typicode.com/posts";
    
    Response res = await get(url);  // capturing response from url using Response Class

    print(res.body);





  }
}