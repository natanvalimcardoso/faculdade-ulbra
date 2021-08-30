import java.util.Scanner;

public class ex6 {
    public static void main(String[] args) {
        
        Scanner a = new Scanner(System.in);
        System.out.print("Digite uma frase: ");
        String frase = a.nextLine();

        System.out.print(frase.substring(0, frase.length() -1));
    }
}
