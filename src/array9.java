package array;
import java.util.Scanner;
import java.nio.charset.*;
import java.util.*;

public class array9 {
    public static void main(String[] args) {
        String[] placaNome = new String[10];
        int[] estacionamento = new int[10];
        int fechamento = 0;
        int vaga = 1;
        int placaValor = 0;

        System.out.println("Digite ( 1 ) para - adicionar vaga");
        System.out.println("Digite ( 2 ) para - liberar vaga");
        System.out.println("Digite ( 3 ) para - listar vagas");
        System.out.println("Digite ( 4 ) para - Sair\n");

        do {
            var teclado = new Scanner(System.in);
            System.out.print("Digite as opções: ");
            int number = teclado.nextInt();
            fechamento = number;

            if (fechamento != 4) {

                if (fechamento == 1 && estacionamento.length > estacionamento[9]) {
                    Scanner a = new Scanner(System.in);
                    System.out.print("Digite a placa: ");
                    String placa = a.nextLine();

            

                    for (int o = 9; o < estacionamento.length; o++) { //ta aqui o erro amanha arruma
                        estacionamento[o] = vaga;
                        vaga++;                                                        // terminar
                        placaNome[o] = placa;
                        System.out.println("\nA sua placa é: " + placaNome[o]);
                        placaValor++;
                        System.out.println("E a posição da vaga é: " + estacionamento[o] + "\n");
                        if (estacionamento.length == estacionamento[9]) {
                            System.out.println("O estacionamento está cheio, por favor, espere um pouco.\n");
                            main(args);
                        }
                    }
                }

            }

        } while (fechamento != 4);
    }
}
