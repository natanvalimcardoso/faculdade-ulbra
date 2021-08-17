import java.util.Scanner;

public class ex8 {
    public static void main(String[] args) throws Exception {

        int soma = 0;

        Scanner a = new Scanner(System.in);
        System.out.print("Digite o primeiro multiplicador: ");
        int primeiro = a.nextInt();
<<<<<<< HEAD

=======
    
        Scanner b = new Scanner(System.in);
        System.out.print("Digite o segundo multiplicador: ");       
        int multiplicador2 = b.nextInt();
>>>>>>> 6ebba8e07b5ee1f392d18481a4f3a0c328bdaf3b

        for (int i = 0; i <= 10; i++) {
            
            soma = i * primeiro;
            
            System.out.println("A multiplicação do numero: " + primeiro + "  x  " + i + " = " + soma );
        }
    }
}
