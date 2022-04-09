package Source;
// Uma imagem em preto e branco, de tamanho m x n, pode ser representada por uma matriz

//  cujos elementos assumem valores no conjunto {0,1}. Dado um padrão representado por uma matriz 3x3 também
// assumindo valores em {0,1}, escreva um programa que determine se o padrão existe ou não na imagem.

public class App {
    public static void main(String[] args) throws Exception {

        int[][] matrixTamanho = new int[100][100];
        int[][] matrixPadraoSerbuscado = new int[2][2];
        int[][] matrixPadraoCruz = new int[3][3];
        int contador = 0;
        int contadorCruz = 0;

        for (int i = 0; i < matrixTamanho.length; i++) {
            for (int j = 0; j < matrixTamanho[i].length; j++) {
                matrixTamanho[i][j] = (int) Math.round(Math.random());
                System.out.print(" " + matrixTamanho[i][j] + " ");
            }
            System.out.println();
        }
        matrixPadraoSerbuscado[0][0] = 1;
        matrixPadraoSerbuscado[0][1] = 1;
        matrixPadraoSerbuscado[1][0] = 1;
        matrixPadraoSerbuscado[1][1] = 0;

        matrixPadraoCruz[0][0] = 0;
        matrixPadraoCruz[0][1] = 1;
        matrixPadraoCruz[0][2] = 0;
        matrixPadraoCruz[1][0] = 1;
        matrixPadraoCruz[1][1] = 1;
        matrixPadraoCruz[1][2] = 1;
        matrixPadraoCruz[2][0] = 0;
        matrixPadraoCruz[2][1] = 1;
        matrixPadraoCruz[2][2] = 0;

        System.out.println();
        System.out.println("Padrão a ser encontrado: ");
        for (int i = 0; i < matrixPadraoSerbuscado.length; i++) {
            for (int j = 0; j < matrixPadraoSerbuscado[i].length; j++) {
                System.out.print(" " + matrixPadraoSerbuscado[i][j] + " ");
            }
            System.out.println();
        }

        System.out.println();
        System.out.println("Padrão a ser encontrado: ");

        for (int i = 0; i < matrixPadraoCruz.length; i++) {
            for (int j = 0; j < matrixPadraoCruz[i].length; j++) {
                System.out.print(" " + matrixPadraoCruz[i][j] + " ");
            }
            System.out.println();
        }

        for (int i = 0; i < matrixTamanho.length - 2; i++) {
            for (int j = 0; j < matrixTamanho[i].length - 2; j++) {
                if (matrixTamanho[i][j] == matrixPadraoSerbuscado[0][0]
                        && matrixTamanho[i][j + 1] == matrixPadraoSerbuscado[0][1]
                        && matrixTamanho[i + 1][j] == matrixPadraoSerbuscado[1][0]
                        && matrixTamanho[i + 1][j + 1] == matrixPadraoSerbuscado[1][1]) {
                    contador++;
                }

            }
        }
        Cronometro.start();
        for (int i = 0; i < matrixTamanho.length - 2; i++) {
            for (int j = 0; j < matrixTamanho[i].length - 2; j++) {
                if (matrixTamanho[i][j] == matrixPadraoCruz[0][0]
                        && matrixTamanho[i][j + 1] == matrixPadraoCruz[0][1]
                        && matrixTamanho[i][j + 2] == matrixPadraoCruz[0][2]
                        && matrixTamanho[i + 1][j] == matrixPadraoCruz[1][0]
                        && matrixTamanho[i + 1][j + 1] == matrixPadraoCruz[1][1]
                        && matrixTamanho[i + 1][j + 2] == matrixPadraoCruz[1][2]
                        && matrixTamanho[i + 2][j] == matrixPadraoCruz[2][0]
                        && matrixTamanho[i + 2][j + 1] == matrixPadraoCruz[2][1]
                        && matrixTamanho[i + 2][j + 2] == matrixPadraoCruz[2][2]) {
                    contadorCruz++;
                    Cronometro.stop();

                }
            }
        }

        System.out.println();
        if (contador == 0) {
            System.out.println("Padrão normal não encontrado");

        } else {
            System.out.println("Padrao normal encontrado: " + contador + " vezes");
        }

        if (contadorCruz == 0) {
            System.out.println("Padrão cruz teste não encontrado");
        } else {
            System.out.println("Padrao da cruz encontrado: " + contadorCruz + " vezes");
        }
        System.out.println();
        
    }
    
}
