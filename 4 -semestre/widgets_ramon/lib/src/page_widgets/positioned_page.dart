import 'package:flutter/material.dart';

class PositionedPage extends StatelessWidget {
  const PositionedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Positioned Page'),
        centerTitle: true,
      ),
      body: Container(),
    );
  }
}
