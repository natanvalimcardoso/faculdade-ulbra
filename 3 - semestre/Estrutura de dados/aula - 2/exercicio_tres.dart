import 'dart:io';
import 'pergunta.dart';

main() {
  List<AlunoTres> listaAlunos = [];
  List listaMaiorNota = [];
  var total;

  listAlunoFuncao<List>(String nome, double nota) {
    var novoAluno = AlunoTres(
      nome: nome,
      nota: nota,
    );
    listaAlunos.add(novoAluno);
  }

  //////////////////////////////////////

  calcularMedia() {
    var soma = 0.0;
    for (var numberAluno in listaAlunos) {
      soma += numberAluno.nota; // Soma todas nota dos alunos e divide
    }
    return soma / listaAlunos.length;
  }

  ///////////////////////////////////////

  calcularMaiorNotaTurma(double total) {
    for (var numberAluno in listaAlunos) {
      if (numberAluno.nota > total) { // Calcula qual aluno teve a nota maior que a média
        listaMaiorNota.add(numberAluno);
      }
    }
    for (var numberAluno in listaMaiorNota) {
      print(
          'As maiores notas foram: nome: ${numberAluno.nome} nota: ${numberAluno.nota}');
    }
  }
  /////////////////////////////

  for (int i = 0; i < 3; i++) {
    stdout.write('Digite o nome do aluno: ');
    String nomeAluno = pergunta('');

    stdout.write('Digite a nota do aluno: ');
    double notaAluno = pergunta(0.0);

    listAlunoFuncao(nomeAluno, notaAluno);
    total = calcularMedia();
  }
  ;
  print('\nA média da turma é: $total');
  calcularMaiorNotaTurma(total);
}

class AlunoTres {
  String nome;
  double nota;

  AlunoTres({
    required this.nome,
    required this.nota,
  });
}
