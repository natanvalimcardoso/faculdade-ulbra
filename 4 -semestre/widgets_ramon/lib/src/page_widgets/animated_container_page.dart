import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatelessWidget {

  const AnimatedContainerPage({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Animated Container'),),
           body: Container(),
       );
  }
}