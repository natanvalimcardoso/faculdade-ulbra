import java.util.Scanner;

public class ex4 {
    public static void main(String[] args) throws Exception {

        double soma = 0;

        Scanner a = new Scanner(System.in);
        System.out.print("Qual sua idade: ");
        double idade = a.nextInt();

        Scanner b = new Scanner(System.in);
        System.out.print("Qual o seu sexo m ou f: "); // Ler String.
        String sexo = b.nextLine();

        Scanner c = new Scanner(System.in);
        System.out.print("Quantos anos de contribuição: ");
        double contribuiçao = c.nextInt();

        if (sexo == "m") {
            if (contribuiçao > 30) {
                System.out.println("Você ja tem direito a contribuição");
            }
            if (idade >= 60) {
                System.out.println("Você ja tem direito a contribuição");
            } else {
                System.out.println("Você não tem direito a contribuição");
            }
        } else {
            if (contribuiçao > 35) {
                System.out.println("Você ja tem direito a contribuição");
            }
            if (idade >= 65) {
                System.out.println("Você ja tem direito a contribuição");
            } else {
                System.out.println("Você não tem direito a contribuição");
            }
        }
    }
}
//finalizado
