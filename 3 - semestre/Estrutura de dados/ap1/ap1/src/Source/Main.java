package Source;

public class Main {
    public static void main(String[] args) throws Exception {
        int[][] matrizTamanho = new int[10][10];
        int[][] matrizPadrao = new int[2][2];
        int cont = 0;

        for (int i = 0; i < matrizTamanho.length; i++) {
            for (int j = 0; j < matrizTamanho[i].length; j++) {
                matrizTamanho[i][j] = (int) Math.round(Math.random());
                System.out.print(matrizTamanho[i][j] + ".");
            }
            System.out.println();
        }

        // * Formato Padrão a ser buscado *//

        matrizPadrao[0][0] = 1;
        matrizPadrao[0][1] = 1;
        matrizPadrao[1][0] = 1;
        matrizPadrao[1][1] = 0;

        // * Formato Padrão a ser buscado *//

        System.out.println();

        for (int i = 0; i < matrizPadrao.length; i++) {
            for (int j = 0; j < matrizPadrao[i].length; j++) {
                System.out.print(" " + matrizPadrao[i][j] + " ");
            }
            System.out.println();
        }

        Tempo.start();
        for (int i = 0; i < matrizTamanho.length - 2; i++) {
            for (int j = 0; j < matrizTamanho[i].length - 2; j++) {
                if (matrizTamanho[i][j] == matrizPadrao[0][0]
                        && matrizTamanho[i][j + 1] == matrizPadrao[0][1]
                        && matrizTamanho[i + 1][j] == matrizPadrao[1][0]
                        && matrizTamanho[i + 1][j + 1] == matrizPadrao[1][1]) {
                    cont++;
                    Tempo.stop();
                }

            }
        }

        System.out.println();
        if (cont == 0) {
            System.out.println("A matriz não foi encontradaS");

        } else {
            System.out.println("O número de vezes que a matriz foi encontrada:" + cont);
        }

    }

}
