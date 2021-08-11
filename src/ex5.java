import java.util.Scanner;

public class ex5 {
    public static void main(String[] args) throws Exception {

        double soma = 0;
        double somaTotal = 0;

        Scanner a = new Scanner(System.in);
        System.out.print("Nome do produto: ");
        String produto = a.nextLine();

        Scanner b = new Scanner(System.in);
        System.out.print("Valor do produto: ");
        double valor = b.nextInt();

        if (200 > valor && valor >= 50) {
            soma = (valor * 0.05);
            somaTotal = (valor - soma);
        } else if (500 > valor && valor >= 200) {
            soma = (valor * 0.06);
            somaTotal = (valor - soma);
        } else if (1000 > valor && valor >= 500) {
            soma = (valor * 0.07);
            somaTotal = (valor + soma);
        } else {
            soma = (valor * 0.08);
            somaTotal = (valor - soma);
        }

        System.out.println("O valor da " + produto + " é de: " + "R$ " + somaTotal);
    }
}
