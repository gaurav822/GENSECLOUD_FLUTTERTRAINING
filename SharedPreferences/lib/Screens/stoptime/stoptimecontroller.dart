import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StopTimeController extends GetxController {
  StopTimeController() {
    listen();
  }
  StreamController streamController = StreamController<String>();

  List<Widget> _timeList = [_widget()];
  List<Widget> get timeList => _timeList;

  stop() {
    streamController.sink.add(DateTime.now().toIso8601String());
  }

  listen() {
    print("listening..");
    streamController.stream.listen((time) {
      List<Widget> tempList = List();
      tempList.add(Text(time));
      tempList.insertAll(0, _timeList);
      _timeList = tempList;
      update();
    });
  }

  static Widget _widget() {
    return SizedBox();
  }
}