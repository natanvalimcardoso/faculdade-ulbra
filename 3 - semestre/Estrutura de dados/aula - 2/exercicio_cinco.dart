/*Crie um vetor capaz de armazenar 50 números inteiros. Em seguida faça o seu preenchimento
 automático com os números de 101 a 150, ou seja, na posição número 0 ponha 101, na posição 1 
 ponha o número 102, e assim sucessivamente. Em seguida, exiba os valores deste vetor.*/

main(){
  List lista = [];

  for(int i = 0; i < 50; i++){
    lista.add(101 + i);
  }
  print(lista);
}