import 'package:MovieApiAssignment/Model/moviemodel.dart';
import 'package:MovieApiAssignment/Screens/API/api.dart';
import 'package:MovieApiAssignment/Screens/moviecardcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' as Getx;
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // List<Widget> _listItems= List();
  //  bool _isLoading=false;
  //  Widget _loadingWidget= LinearProgressIndicator();
  // Widget _disableloadingwidget = SizedBox();
  int pagenum=1;

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: MovieCardController(),
      builder: (MovieCardController controller)=>Scaffold(

      backgroundColor: Colors.green,

      resizeToAvoidBottomPadding: false,



      appBar: _appBar(),

      body: 
      Column(
        children: [
        //  _isLoading==true? _loadingWidget: _disableloadingwidget,
          Container(
          color: Colors.green,
          width: Getx.Get.width,
          height: Getx.Get.height*0.8,
          child: RefreshIndicator(
            onRefresh: (){
              // _fetch();
              return controller.fetch(context,pagenum,_mylist);
            },
              child: ListView(

              children: controller.cards,

              // physics: BouncingScrollPhysics(),

              physics: BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics()
              ),  //this is preferable but above one won't work in case of Refresh Indicator is on

            ),
          ),

        
      ),
      SizedBox(height: 10,),

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
           RaisedButton(
        onPressed: (){
          if(pagenum!=1){
          pagenum--;
          setState(() {});
          controller.fetch(context,pagenum,_mylist);
          }
        },
        color: Colors.blue,
        child: Text("Previous Page"),
        ),
        Text(pagenum.toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,)),
          RaisedButton(
        onPressed: (){
          pagenum++;
          setState(() {   
          });
          controller.fetch(context,pagenum,_mylist);
        },
        color: Colors.blue,
        child: Text("Next Page"),
        ),


        ],
      ),

      
        ],
      ),

      
    
      
    )
    
    );
  }



  // Widget _movieCard(MovieModel movieModel){

  //   return Container(
      
  //     child: Padding(
  //       padding: const EdgeInsets.all(20.0),
  //       child: Card(

  //         margin: EdgeInsets.symmetric(vertical: 20),

  //         color: Colors.black,

  //         child: Column(
            
  //           children: [
  //             Image.network(
  //               movieModel.image,
  //               fit: BoxFit.cover,
  //             ),

  //             SizedBox(
  //               height: 30,
  //             ),
  //             Column(
  //               mainAxisAlignment: MainAxisAlignment.start,
  //               children: [
  //                 Text(movieModel.name,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20),),

  //                 Text(movieModel.year,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white54),),

                  
  //               ],
  //             ),


  //           ],
  //         ),



  //       ),
  //     ),
  //   );
  // }

  Widget _appBar(){

    return AppBar(
        backgroundColor: Colors.deepPurple.shade900,
        title: Text("Movie Application"),
        
        actions: [
        
          Icon(Icons.live_tv,color: Colors.blue,),
          SizedBox(width: 30),
        ],
        centerTitle: true,
      );
  }

  List<Widget> _mylist = [
    Center(
      heightFactor: 20,
      child: CircularProgressIndicator(
        backgroundColor: Colors.grey,
        valueColor: AlwaysStoppedAnimation<Color> (Colors.red),
      ),
    )
  ];

  // Future<void> _fetch() async {

  //   // _enableLoading();


  //   String url= "https://yts.mx/api/v2/list_movies.json";
  //   Response response= await get(url);
  //   _responseDecoder(response.body);

  //   // _disableLoading();
  // }

  // _responseDecoder(String body){

  //  Map<String,dynamic> map= jsonDecode(body);

  //  Map<String,dynamic> data = map["data"];
   
  //  List movielist= data["movies"];

  //  List<Widget> tempList=List();


  //  for(int i=0;i<10;i++){

  //    Map eachMovie= movielist[i];

  //    MovieModel moviemodel= MovieModel(
  //      image: eachMovie["large_cover_image"],
  //      name: eachMovie["title"],
  //      year: eachMovie["year"].toString()
  //    );

  //    Widget myCard= _movieCard(moviemodel);
  //    tempList.add(myCard);

  //  }

  //  _listItems= tempList;
  // }

  //  _enableLoading(){
  //   _isLoading=true;
  //   setState(() {
      
  //   });
    
  // }

  // _disableLoading(){

  //   _isLoading=false;
  //   setState(() {
      
  //   });
  // }
}

