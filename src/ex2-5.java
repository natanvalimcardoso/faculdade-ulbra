import java.util.Scanner;

public class ex5 {
    public static void main(String[] args) {
        
        Scanner a = new Scanner(System.in);
        System.out.print("Digite uma frase: ");
        String frase = a.nextLine();

        boolean confirmador = true;
        confirmador = (frase.contains ("sexo") || frase.contains("sexual"));

        if (confirmador == true) {
            System.out.print("Conteúdo improprio");
        } else {
            System.out.print("Conteúdo liberado: " + frase);
        }
    }
}

