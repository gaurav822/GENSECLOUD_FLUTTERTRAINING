import 'package:flutter/cupertino.dart';

class JsonPlaceHolderModel{

  int id, userId;
  String title,body;

  JsonPlaceHolderModel({
    @required this.title,
    @required this.body,
    this.id,
    this.userId
  });

}