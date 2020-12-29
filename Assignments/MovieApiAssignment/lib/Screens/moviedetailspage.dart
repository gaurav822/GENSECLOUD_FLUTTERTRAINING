import 'dart:collection';
import 'dart:convert';

import 'package:MovieApiAssignment/Model/castmodel.dart';
import 'package:MovieApiAssignment/Model/moviemodel.dart';
import 'package:MovieApiAssignment/Model/qualityandsize.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' as Getx;
import 'package:http/http.dart';

class MovieDetailsPage extends StatefulWidget {
  @override
  _MovieDetailsPageState createState() => _MovieDetailsPageState();
}

class _MovieDetailsPageState extends State<MovieDetailsPage> {
  List qualitysizelist= List();

  String movieID='';

  List<Widget> _listItems=[];

  List<Widget> _listItems2= List();

  @override
  Widget build(BuildContext context) {
    MovieModel model= ModalRoute.of(context).settings.arguments;

     qualitysizelist=model.quality;
     movieID=model.id;

     _fetch();
    
     _fetchQualityAndSize();
    

  
    return Scaffold(
      backgroundColor: Colors.green,

      appBar: AppBar(
        title: Text(model.name),
      ),

      body: _body(model),
      
    );

  
  }

  Widget _body(MovieModel model){

    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(model.id),
            Text("Movie Description", style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(
              height: 20,
            ),
            Text(model.description),
            Text("Rating: "+model.rating),
            Text("Runtime: "+model.runtime),

            SizedBox(
              height: 20,
            ),

            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Quality:"),
                Text("Size:")
              ],
            ),

            _datalist2(),

            Text("Casts:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Name:"),
                Text("CharacterName:")
              ],
            ),

            _datalist(),

            
          ]
        ),
      );
  }

    _fetch() async {

    List<Widget> tempList=List();


    String url= "https://yts.mx/api/v2/movie_details.json?movie_id=15&with_cast=true";

    Response response= await get(url);

    Map<String,dynamic> map= jsonDecode(response.body);

    Map<String,dynamic> data = map["data"];
   
    Map<String,dynamic> moviemap= data["movie"];

    List castList= moviemap["cast"];

    for(var each in castList){

      CastModel castModel =CastModel(
        name: each['name'],
        characterName: each['character_name']
      );

      Widget mylist= _castList(castModel);
      tempList.add(mylist);

    }

    _listItems=tempList;
    

  }

  _fetchQualityAndSize(){

    // print(qualitysizelist.length);


    List<Widget> tempList2=List();

    for(var each in qualitysizelist){
      QualityAndSize qualityAndSize= QualityAndSize(
        quality: each['quality'],
        size: each['size']
      );

      Widget qlist=_qualityList(qualityAndSize);
      tempList2.add(qlist); 

      // print(qualitysizelist.length);    
    }

    _listItems2=tempList2;
   
  
    
  }

  Widget _castList(CastModel castModel){

    return Row(
       mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(castModel.name),
        Text(castModel.characterName)
    
      ],
    );
  }

 Widget _qualityList(QualityAndSize qualityAndSize){

    return Row(
       mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(qualityAndSize.quality),
        Text(qualityAndSize.size)
    
      ],
    );
  }





  _datalist(){

    return Ink(
      color: Colors.yellow,
          child: SizedBox(
            height: 0.2* Getx.Get.height,
            width: Getx.Get.width,

            child: ListView(
              children: _listItems,
            ),
        
      ),
    );
  }

  _datalist2(){

    return Ink(
      color: Colors.red,
          child: SizedBox(
            height: 0.2* Getx.Get.height,
            width: Getx.Get.width,

            child: ListView(
              children: _listItems2,
            ),
        
      ),
    );
  }


}








  