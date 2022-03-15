package metodos;

import java.util.Scanner;

public class metodo2 {

    public static void main(String[] args) throws Exception {
        contador();
        contador2();
        contador3();
        contador4();
    }

    public static void contador() throws Exception {
        for (int i = 1; i < 11; i++) {
            System.out.println(i);
        }
    }

    public static void contador2() throws Exception {
        var b = new Scanner(System.in);
        System.out.print("Digite os numeros para final: ");
        int numero = b.nextInt();

        for (int i = 1; i <= numero; i++) {
            System.out.println(i);
        }
    }

    public static void contador3() throws Exception {
        var b = new Scanner(System.in);

        System.out.print("Digite os numeros para inicio ");
        int numero = b.nextInt();
        System.out.print("Digite os numeros para final: ");
        int numero1 = b.nextInt();

        for (int i = numero; i <= numero1; i++) {
            System.out.println(i);
        }
    }

    public static void contador4() throws Exception {
        var b = new Scanner(System.in);

        System.out.print("Digite os numeros para inicio ");
        int numero = b.nextInt();
        System.out.print("Digite os numeros para final: ");
        int numero1 = b.nextInt();
        System.out.print("Quanto tempo de pausa: ");
        int numero2 = b.nextInt();

        for (int i = numero; i <= numero1; i++) {
            System.out.println(i);
            Thread.sleep(numero2 * 1000);
        }
    }
}
