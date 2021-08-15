import java.util.Scanner;

public class ex8 {
    public static void main(String[] args) throws Exception {

        int soma = 0;

        Scanner a = new Scanner(System.in);
        System.out.print("Digite o primeiro multiplicador: ");
        int primeiro = a.nextInt();

        Scanner b = new Scanner(System.in);
        System.out.print("Digite o segundo multiplicador: ");
        int multiplicador2 = b.nextInt();

        for (int i = 1; i < 10; i++) {
            multiplicador2++;
            soma = multiplicador2 * primeiro;
            
            System.out.println(primeiro + "x" + soma);
        }
    }
}