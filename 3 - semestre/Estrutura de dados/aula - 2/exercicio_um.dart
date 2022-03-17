// Escreva uma classe que Leia 3 nomes e notas de uma turma, calcula e
// exibe a média das notas da turma e em seguida exibe a relação de nomes
// cuja nota é superior a esta média. Utilize vetores para armazenar as notas.
import 'pergunta.dart';

main() {
  List<Aluno> listaAlunos = [];
  

  listAlunoFuncao<List>(String nome, double nota) {
    //* Ready
    var novoAluno = Aluno(
      nome: nome,
      nota: nota,
    );
    listaAlunos.add(novoAluno);
  }

  mostrarAluno() {
    //* Ready
    for (var numberAluno in listaAlunos) {
      print('O nome: ${numberAluno.nome} Sua Nota: ${numberAluno.nota}');
    }
  }

  calcularMedia() {
    //* Ready
    var soma;
    for (var numberAluno in listaAlunos) {
      soma += numberAluno.nota / listaAlunos.length;
    }
    return soma;
  }

  calcularMaiorNotaTurma(double total) { //! Faltou Terminar //Erro que não é aqui
    for (var numberAluno in listaAlunos) {
      if (numberAluno.nota > total) {
        print('A maior nota da turma éO nome: ${numberAluno.nome} Sua Nota: ${numberAluno.nota}');
      }
    }
  }

  for (int i = 0; i < 3; i++) {
    print('Digite o nome do aluno: ');
    String nomeAluno = pergunta('');

    print('Digite a nota do aluno: ');
    double notaAluno = pergunta(0.0);

    listAlunoFuncao(nomeAluno, notaAluno);
  };

  var total = calcularMedia();
  var maiorNotaTurma = calcularMaiorNotaTurma(total);

  
  mostrarAluno();
  print('A média da turma é: $total');
  print(maiorNotaTurma);
  
}

class Aluno {
  String nome;
  double nota;

  Aluno({
    required this.nome,
    required this.nota,
  });
}
