import 'package:HTTPSREVISE/Models/jsonPlaceholdermodel.dart';
import 'package:flutter/material.dart';

class DetailedPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    JsonPlaceHolderModel model= ModalRoute.of(context).settings.arguments; // used only in case of pushedName Navigation to receive arguments
    return Scaffold(

      appBar: AppBar(),

      body: Center(
        child: Text(model.body),
      ),
      
    );
  }
}