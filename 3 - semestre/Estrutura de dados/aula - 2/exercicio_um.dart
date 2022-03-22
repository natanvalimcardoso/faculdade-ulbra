// Escreva uma classe que Leia 3 nomes e notas de uma turma, calcula e
// exibe a média das notas da turma e em seguida exibe a relação de nomes
// cuja nota é superior a esta média. Utilize vetores para armazenar as notas.
import 'dart:io';

import 'pergunta.dart';

main() {
  List<Aluno> listaAlunos = [];
  List listaMaiorNota = [];
  var total;


  listAlunoFuncao<List>(String nome, double nota) {
    var novoAluno = Aluno(
      nome: nome,
      nota: nota,
    );
    listaAlunos.add(novoAluno);
  }


 //////////////////////////////////////////////////////////////*
 
  mostrarAluno() {
 
    for (var numberAluno in listaAlunos) {                                  // Printa os alunos e as notas
      print('O nome: ${numberAluno.nome} Sua Nota: ${numberAluno.nota}');
    }
  }

//////////////////////////////////////////////////////////////*

  calcularMedia() {
    //* Ready
    var soma = 0.0;
    for (var numberAluno in listaAlunos) {                                 // Soma todas nota dos alunos e divide
      soma += numberAluno.nota; //aqui
    }
    return soma / listaAlunos.length;
  }

 //////////////////////////////////////////////////////////////*
 
  calcularMaiorNotaTurma(double total) {
    for (var numberAluno in listaAlunos) {        
      if (numberAluno.nota > total) {                                     // Calcula qual aluno teve a nota maior que a média
         listaMaiorNota.add(numberAluno);
      }
    }
    for (var numberAluno in listaMaiorNota){
      print('As maiores notas foram: nome: ${numberAluno.nome} nota: ${numberAluno.nota}');
    }
  }

 //////////////////////////////////////////////////////////////*

  for (int i = 0; i < 3; i++) {
    stdout.write('Digite o nome do aluno: ');
    String nomeAluno = pergunta('');

    stdout.write('Digite a nota do aluno: ');
    double notaAluno = pergunta(0.0);

    listAlunoFuncao(nomeAluno, notaAluno);
    total = calcularMedia();
    
  };

    

  print('\n');
  mostrarAluno();
  print('\nA média da turma é: $total');
  calcularMaiorNotaTurma(total);
  
}

class Aluno {
  String nome;
  double nota;

  Aluno({
    required this.nome,
    required this.nota,
  });
}
