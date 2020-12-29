
import 'package:MovieApiAssignment/Model/moviemodel.dart';
import 'package:MovieApiAssignment/Screens/API/api.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' as Getx;

class MovieCardController  extends Getx.GetxController{

  List<Widget> _listItems = [
    Center(
      heightFactor: 20,
      child: CircularProgressIndicator(
        backgroundColor: Colors.grey,
        valueColor: AlwaysStoppedAnimation<Color> (Colors.red),
      ),
    )
  ];

  List<Widget> get cards => _listItems;

  // MovieCardController(){
  //   refresh();
  // }

  // Future<void> refresh() async{

  //   await _fetch();
  //   // print("here");
  //   update();

  //   // return 0;
  // }


  Future<void> fetch(BuildContext context,int pagenum,List<Widget> lists) async {

  List<Widget> tempList=List();

  _listItems=lists;

  List<MovieModel> modelList = await API.fetchPost(pagenum);


   for(int i=0;i<modelList.length;i++){

     MovieModel moviemodel= MovieModel(
       id: modelList[i].id,
       image: modelList[i].image,
       name: modelList[i].name,
       year: modelList[i].year,
       description: modelList[i].description,
       rating: modelList[i].rating,
       runtime: modelList[i].runtime,
       quality: modelList[i].quality

     );

     Widget myCard= _movieCard(moviemodel,context);
     tempList.add(myCard);

   }

   _listItems= tempList;

   update();

  //  print(_listItems.length);

  
  }

   Widget _movieCard(MovieModel movieModel, BuildContext context){

    return Container(
      
        child: GestureDetector(
          onTap: (){
            Navigator.pushNamed(context,"/detailsPage",arguments: movieModel);
          },
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Card(

            margin: EdgeInsets.symmetric(vertical: 20),

            color: Colors.black,

            child: Column(
              
              children: [
                Image.network(
                    movieModel.image,
                    fit: BoxFit.fill,
              
                ),

                SizedBox(
                    height: 30,
                ),
                Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(movieModel.name,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20),),

                      Text(movieModel.year,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white54),),

                      
                    ],
                ),


              ],
             ),



          ),
                  ),
        ),
      
    );
  }


}

