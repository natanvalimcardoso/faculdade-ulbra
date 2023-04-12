import 'package:flutter/material.dart';

class SpacerPage extends StatelessWidget {
  const SpacerPage({Key? key}) : super(key: key);

  //* Responsividade
  //* Facil de usar
  //* Boa prática de design:
  //* Redução de código:
  //! Não consegue fazer algo 100% preciso, se aumentar flex ele prejudica os outros

  // Exemplo valor flex é definido como 3. Isso significa que, se houver espaço vazio disponível em um Row ou Column, o Spacer deve ocupar três vezes mais espaço do que um widget com flex: 1,

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Spacer'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              Container(
                color: Colors.red,
                height: 50,
                width: 50,
              ),
              const Spacer(flex: 1,),
              Container(
                color: Colors.green,
                height: 50,
                width: 50,
              ),
              const Spacer(),
              Container(
                color: Colors.green,
                height: 50,
                width: 50,
              ),
              
            ],
          ),
          const Spacer(),
          const Divider(
            color: Colors.black,
            thickness: 2,
          ),
          Container(
            color: Colors.red,
            height: 100,
            width: 100,
          ),
          const Spacer(),
          Container(
            color: Colors.red,
            height: 100,
            width: 100,
          ),
          Container(
            color: Colors.green,
            height: 100,
            width: 100,
          ),
          const Spacer(),
          Container(
            color: Colors.blue,
            height: 100,
            width: 100,
          ),
        ],
      ),
    );
  }
}
