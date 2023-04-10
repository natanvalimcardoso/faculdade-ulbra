import 'package:flutter/material.dart';

class CenterDoisPage extends StatelessWidget {
  const CenterDoisPage({Key? key}) : super(key: key);

  //* widthFactor e heightFactor de um widget, o tamanho do widget resultante será calculado multiplicando o tamanho do pai no caso container com 100h e 100w. 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vantagem do Center'),
      ),
      body:
      
       Center(
        // widthFactor: 2,
        child: Container(
          height: 100,
          width: 100,
          color: Colors.red,
        ),
      ),

      //  SizedBox(
      //   width: double.infinity,
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Container(
      //         height: 100,
      //         width: 100,
      //         color: Colors.red,
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
