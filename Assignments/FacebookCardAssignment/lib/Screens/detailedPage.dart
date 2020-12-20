import 'package:FacebookCardAssignment/Models/facebookcardmodel.dart';
import 'package:flutter/material.dart';

class DetailedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FacebookCardModel model= ModalRoute.of(context).settings.arguments;
    return Scaffold(

      appBar: AppBar(),

      body: Center(
        child: Column(
          children: [
            Text(model.cmnts.toString()),
          ],
        ),
      ),
      
    );
  }
}