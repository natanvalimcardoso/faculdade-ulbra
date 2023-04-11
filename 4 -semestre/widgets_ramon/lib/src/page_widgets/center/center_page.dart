import 'package:flutter/material.dart';

class CenterPage extends StatelessWidget {
//* Facilidade de uso

//* Personalização: Width e Height

//* Responsividade

//* Boa prática de design

  const CenterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Center Page'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/centerDois');
            },
            icon: const Icon(Icons.skip_next),
          ),
        ],
      ),
      body: Column(
        children: [
          
          Expanded(
            child: Container(
              color: const Color.fromARGB(78, 76, 175, 79),
              child: Center(
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.green,
                ),
              ),
            ),
          ),

          Expanded(
            child: Container(
              color: const Color.fromARGB(133, 206, 95, 26),
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.red,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
