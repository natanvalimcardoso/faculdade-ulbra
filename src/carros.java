

import java.util.Scanner;

public class carros {
    public static void main(String[] args) {
        var teclado = new Scanner(System.in);
        String[] placas = new String[11];
        String[] vagas = new String[11];
        int fechamento = 0;
        boolean valid = false;
        

        do {
            System.out.println("Digite ( 1 ) para - adicionar vaga");
            System.out.println("Digite ( 2 ) para - remover vaga");
            System.out.println("Digite ( 3 ) para - listar vagas");
            System.out.println("Digite ( 4 ) para - Sair\n");

            System.out.print("Digite as opções: ");
            int number = teclado.nextInt();
            fechamento = number;

            if (fechamento != 4) {
                if (fechamento == 1) { 
                    System.out.print("Digite a placa: ");
                    String placa = teclado.next();

                    do {
                        System.out.print("Digite a sua vaga: ");
                        String vaga = teclado.next();

                        valid = false;
                        int nVaga = Integer.parseInt(vaga); // converte string em um int

                        if (vagas[nVaga] == null) {
                            vagas[nVaga] = vaga;
                            placas[nVaga] = placa;
                            valid = true;

                            System.out.println("\nA sua placa é: " + placas[nVaga]);
                            System.out.println("E a posição da vaga é: " + vagas[nVaga] + "\n");

                        } else {
                            System.out.println("Esta ocupado tente outro numero");
                            valid = false;
                        }
                    } while (valid != true);
                }
            }
            if (fechamento == 2) {
                System.out.print("Digite a vaga: ");
                String vaga = teclado.next();
                

                for (int i = 1; i < vagas.length; i++) {
                    if (vaga.equals(vagas[i]) ) {
                        System.out.println("Removido com sucesso");
                        placas[i] = null;
                        vagas[i] = null;
                    }
                }
            }

            if (fechamento == 3) {

                for (int i = 1; i < placas.length; i++) {
                    if (placas[i] != null) {
                        System.out.println("");
                        System.out.println("Placa: " + placas[i]);
                        System.out.println("Vaga: Nº" + vagas[i] + "\n");
                        System.out.println("");
                    }
                }

            }
        } while (fechamento != 4);
    }
}
