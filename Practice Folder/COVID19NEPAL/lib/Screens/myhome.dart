import 'dart:convert';

import 'package:COVID19NEPAL/Models/covid19model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  bool _isLoading=false;
  double height,width;
  List<Widget> _listItems= List();
  Widget _loadingWidget= LinearProgressIndicator();
  Widget _disableloadingwidget = SizedBox();
  @override
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    height=size.height;
    width=size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("COVID-19 Nepal Stat"),
        centerTitle: true,
        actions: [
         _refreshButton(),
        ],
      ),

      body: _body(),
    );
  }

  Widget _body(){
    return Column(
      children: [
        _isLoading==true? _loadingWidget: _disableloadingwidget,

        _myList()
      ],
    );
  }

  Widget _myList(){

    return SizedBox(
      height: height*.85,

      width: width,

      child: ListView(

        children: _listItems,

      ),
    );
    
  }

  Widget _refreshButton(){

    return IconButton(
            icon: Icon(Icons.refresh),
           onPressed: (){
        
          _fetch();

             
           });
  }

  _fetch() async{

    _enableLoading();

    String url= "https://api.covid19api.com/dayone/country/NP";

    Response res=await get(url);

    _responseDecoder(res.body);


    _disableLoading();
  }

  _enableLoading(){
    _isLoading=true;
    setState(() {
      
    });
    
  }

  _disableLoading(){

    _isLoading=false;
    setState(() {
      
    });
  }

  _responseDecoder(String body){
    List list=jsonDecode(body);

    List<Widget> tempList=List();

    for(int i=0;i<list.length;i++){

      Map eachElement = list[i];

      CovidModel covidModel = CovidModel(
        date: eachElement['Date'], 
        confirmed: eachElement['Confirmed'], 
        deaths: eachElement['Deaths'], 
        recovered: eachElement['Recovered'], 
        active: eachElement['Active']
      );

      Widget  myCard= _card(covidModel);
      tempList.add(myCard);
    }

    _listItems=tempList;
  }


  Widget _card(CovidModel model){

  return Container(
    height: 0.3*height,
    child: Card(

      color: Colors.red,

          child: Column(

            children: [
              SizedBox(
                height: 30,
              ),
              Text("Date:"+model.date.substring(0,10),style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(
                height: 30,
              ),
              Text("Active = "+model.active.toString()+" Recovered = "+model.recovered.toString()+" Deaths = "+model.deaths.toString(),style: TextStyle(fontWeight: FontWeight.bold),),
            ],

          ),
    ),
  );
  
}

  


}