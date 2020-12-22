import 'package:flutter/material.dart';

class CovidModel{

  String date;
  int confirmed,deaths,recovered,active;

  CovidModel({
    @required this.date,
    @required this.confirmed,
    @required this.deaths,
    @required this.recovered,
    @required this.active
  });



}