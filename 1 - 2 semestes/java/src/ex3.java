import java.util.Scanner;

public class ex3 {
    public static void main(String[] args) throws Exception {

        double media = 0;
        var resultado = "";

        Scanner a = new Scanner(System.in);
        System.out.print("Nota da primeira prova: ");
        double prova1 = a.nextInt();

        Scanner b = new Scanner(System.in);
        System.out.print("Nota da segunda prova: ");
        double prova2 = b.nextInt();

        Scanner c = new Scanner(System.in);
        System.out.print("Nota do trabalho: "); //finalizado

        double trabalho = c.nextInt();

        media = ((prova1 + prova2 + trabalho) / 3);

        if (media >= 6) {
            resultado = "Aprovado";
        } else {
            resultado = "Reprovado";
        }
        System.out.println(" A sua nota é: " + media + " E você foi: " + resultado);
    }
}
