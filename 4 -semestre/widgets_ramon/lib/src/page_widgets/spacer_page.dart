import 'package:flutter/material.dart';

class SpacerPage extends StatelessWidget {

  const SpacerPage({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Spacer'),),
           body: Container(),
       );
  }
}