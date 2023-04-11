import 'package:flutter/material.dart';

class PositionedPage extends StatelessWidget {
  const PositionedPage({Key? key}) : super(key: key);

  //* Posicionamento preciso: top, left, right, bottom

  //* Flexibilidade: pode ser usado com qualquer widget

  //* efeito camadas

  //! Não é bom para responsividade (exceto se for usado com MediaQuery)

  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Positioned Page'),
        centerTitle: true,
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Container(
              color: Colors.blue,
              width: 100,
              height: 100,
            ),
            Positioned(
              top: 10,
              left: 10,
              child: Container(
                color: Colors.red,
                width: 100,
                height: 100,
              ),
            ),
            Positioned(
              top: 30,
              left: 30,
              child: Container(
                color: Colors.green,
                width: 100,
                height: 100,
              ),
            ),
            Positioned(
              top: 500,
              left: 120,
              child: Container(
                color: Colors.orange,
                width: 100,
                height: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
