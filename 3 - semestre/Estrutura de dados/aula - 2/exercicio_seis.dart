/*Crie um vetor capaz de armazenar 50 números inteiros. Em seguida faça o
 seu preenchimento automático de forma randômica. Em seguida, exiba os valores deste vetor.*/

import 'dart:math';

main() {
  List lista = [];
  int _numero;

  for (int i = 0; i < 50; i++) {
    Random numeroAleatorio = Random();
    _numero = numeroAleatorio.nextInt(1000);
    lista.add(_numero);
  }
  print(lista);
}
