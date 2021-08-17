import java.util.Scanner;

public class ex8 {
    public static void main(String[] args) throws Exception {

        int soma = 0;

        Scanner a = new Scanner(System.in);
        System.out.print("Digite o primeiro multiplicador: ");
        int primeiro = a.nextInt();


        for (int i = 0; i <= 10; i++) {
            
            soma = i * primeiro;
            
            System.out.println("A multiplicação do numero: " + primeiro + "  x  " + i + " = " + soma );
        }
    }
}