import java.util.Scanner;

public class ex4 {
    public static void main(String[] args) {

        Scanner a = new Scanner(System.in);
        System.out.print("Digite uma frase: ");
        String frase = a.nextLine();

        String teste = new StringBuilder(frase).reverse().toString();

        System.out.print(teste.replaceAll(" ", ""));
        
    }
}
