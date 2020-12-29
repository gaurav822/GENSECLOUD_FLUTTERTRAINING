import 'dart:convert';
import 'dart:io';
import 'package:MovieApiAssignment/Model/moviemodel.dart';
import 'package:http/http.dart';

class API {
  static Future<List<MovieModel>> fetchPost(int pagenum) async {
    String url = "https://yts.mx/api/v2/list_movies.json=?page=$pagenum";

    print(pagenum);
    try{

    Response response = await get(url);

    if(200==response.statusCode){

    List<MovieModel> responseModelList = List();

    Map<String,dynamic> map= jsonDecode(response.body);

    Map<String,dynamic> data = map["data"];
   
    List movielist= data["movies"];

    for(var each in movielist){

      MovieModel moviemodel = MovieModel(
        id: each['id'].toString(),
        image: each['large_cover_image'],
        name: each['title'],
        year: each['year'].toString(),
        description: each['description_full'],
        rating: each['rating'].toString(),
        runtime: each['runtime'].toString(),
        quality: each["torrents"]
        
      );

      responseModelList.add(moviemodel);
    }

      return responseModelList;

    }

    else {

      return List<MovieModel>();

    }

  }
  
  catch (e){
    print(e.message);
  }

  }
  
}
