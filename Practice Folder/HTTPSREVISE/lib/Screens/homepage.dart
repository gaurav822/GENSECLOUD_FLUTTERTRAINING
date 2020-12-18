import 'package:HTTPSREVISE/Models/jsonPlaceholdermodel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //  Widget _loadingWidget= LinearProgressIndicator();
  Widget _loadingWidget=LinearProgressIndicator();
  Widget _disableloadingWidget= SizedBox();
  bool _isLoading=false;
  double height,width;
  List<Widget> _listItems = List(); // or =[];
  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    height=size.height;
    width=size.width;
    return Scaffold(

      appBar: AppBar(   
        backgroundColor: Colors.purple,
        title: Text('JSONPlaceHolder'),
        centerTitle: true,
        actions: [
          _refreshButton()
        ],
      ),

      body: Column(

        children: [
          _isLoading==true?_loadingWidget: _disableloadingWidget,

          _myList(),

        ],
      ),

      
    );
  }

  Widget _refreshButton(){

    return IconButton(
      icon: Icon(Icons.refresh), 
      onPressed: (){
        _fetch();
      }
      );

  }

_fetch() async{

  _enableLoading();

  String url="https://jsonplaceholder.typicode.com/posts";

  Response response=await get(url);  
  // if await is not used then after enableloading immediately disable will be called which results in nothing

  // or another way = await get(url).then(()=> _disableLoading());
  // print(response.body);

  _responseDecoder(response.body);

  _disableLoading();

}

_enableLoading(){

  setState(() {
    // _loadingWidget= LinearProgressIndicator();

    _isLoading=true;
  });

}

_disableLoading(){

  setState(() {
    // _loadingWidget=SizedBox();
    _isLoading=false;
  });

}

_responseDecoder(String body){

  List list= jsonDecode(body); // jsonDecode uses this library to convert to list import 'dart:convert' 

  // print(responseList);

  // print(responseList.length);

  // print(responseList[0]);

  List<Widget> tempList=List();

  for(int i=0;i<list.length;i++){ 
      Map eachElement = list[i];
      JsonPlaceHolderModel model=JsonPlaceHolderModel(
        title: eachElement['title'], 
        body: eachElement['body'],
        userId: eachElement['userId'],
        id: eachElement['id']
        );

      // String title=eachElement['title'];
      // Widget titleCard= _card(title);

      Widget titleCard= _card(model);
      tempList.add(titleCard);
      
  }

  _listItems=tempList;
  setState(() {
    
  });



}

Widget _myList(){

  return SizedBox(
    height: height*.85,
    width: width,
    child: ListView(

      children: _listItems, // or children : [_card,_card,....so on]
      
    ),
  );
}


Widget _card(JsonPlaceHolderModel model){

  return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, "/details",arguments: model);
      },
      child: Card(

      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(model.title),
      ),

    ),
  );
}

// Widget _card(String title){

//   return Card(

//     child: Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Text(title),
//     ),

//   );
// }
}