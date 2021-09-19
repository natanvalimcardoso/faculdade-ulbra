import java.util.Arrays;
import java.util.Scanner;

public class array5 {
    public static void main(String[] args) {

        float notas[] = new float[5];
        Scanner input = new Scanner(System.in);

        for (int i = 0; i < notas.length; i++) {
            System.out.print("Digite a nota (" + (i + 1) + "):");
            notas[i] = input.nextFloat();
        }

        float soma = (notas[0] + notas[1] + notas[2] + notas[3] + notas[4]) / 5;
        System.out.println("A média é: " + (soma));

        Arrays.sort(notas);
        for (int x = notas.length - 1; x >= 0; x--)
            System.out.println(notas[x]);

    }
}
