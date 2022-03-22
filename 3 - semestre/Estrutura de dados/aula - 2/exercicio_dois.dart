// Leia um conjunto de notas, cuja quantidade seja determinada pelo usuário. Calcule a média de todas
// elas. Exiba o conjunto das notas maiores do que a média calculada. Em seguida, de forma agrupada, exiba o
// outro conjunto de notas (menores do que a média).Utilize vetores

import 'dart:io';
import 'pergunta.dart';

main() {
  List<Alunos> listaAlunos = [];
  List listaMaiorNota = [];
  List listaMenorNota = [];
  var total;

  listAlunoFuncao<List>(String nome, double nota) {
    var novoAluno = Alunos(
      nome: nome,
      nota: nota,
    );
    listaAlunos.add(novoAluno);
  }
/////////////////////////////////////////

  calcularMedia() {
    var soma = 0.0;
    for (var numberAluno in listaAlunos) {
      soma += numberAluno.nota; // Soma todas nota dos alunos e divide
    }
    return soma / listaAlunos.length;
  }

////////////////////////////////////////////

  calcularMaiorNotaTurma(double total) {
    for (var numberAluno in listaAlunos) {
      if (numberAluno.nota > total) {
        listaMaiorNota.add(numberAluno); // Calcula qual aluno teve a nota maior que a média
      }
    }
    for (var numberAluno in listaMaiorNota) {
      print(
          'As maiores notas foram: nome: ${numberAluno.nome} nota: ${numberAluno.nota}');
    }
  }

  ////////////////////////////////////////////

  calcularMenorNotaTurma(double total) {
    for (var numberAluno in listaAlunos) {
      if (numberAluno.nota < total) {
        listaMenorNota.add(numberAluno); // Calcula qual aluno teve a nota menor nota que a média
      }
    }
    for (var numberAluno in listaMenorNota) {
      print(
          'As menores notas foram: nome: ${numberAluno.nome} nota: ${numberAluno.nota}');
    }
  }

  ////////////////////////////////////////////

  stdout.write('Digite quantas notas são: ');
  int quantidadeNotas = pergunta(0);

  for (int i = 0; i < quantidadeNotas; i++) {
    stdout.write('Digite o nome do aluno: ');
    String nomeAluno = pergunta('');

    stdout.write('Digite a nota do aluno: ');
    double notaAluno = pergunta(0.0);

    listAlunoFuncao(nomeAluno, notaAluno);
    total = calcularMedia();
  }

  print('\nA media é: ${calcularMedia()}');
  calcularMaiorNotaTurma(total);
  print('\n');
  calcularMenorNotaTurma(total);
}

class Alunos {
  String nome;
  double nota;

  Alunos({
    required this.nome,
    required this.nota,
  });
}
