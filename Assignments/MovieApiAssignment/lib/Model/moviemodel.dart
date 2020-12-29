import 'package:flutter/material.dart';

class MovieModel{

  String id,name, image;

  String year;

  String description,rating,runtime;

  List quality;


  MovieModel({@required this.id,@required this.name, @required this.image, @required this.year
  ,@required this.description,@required this.rating,@required this.runtime,@required this.quality});
}