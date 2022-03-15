import java.util.Scanner;

public class array1 {
    public static void main(String[] args) {

        int[] meuArray = new int[4];

        for (int i = 0; i < 4; i++) {
            Scanner b = new Scanner(System.in);
            System.out.print("Digite os numeros: ");
            int numero = b.nextInt();

            meuArray[i] = numero; //Usei o i pra puxar la de cima

        }
        System.out.println("O valor digitado é de: " + meuArray[0] + "," + meuArray[1] + "," + meuArray[2] + "," + meuArray[3]);
    }
}
