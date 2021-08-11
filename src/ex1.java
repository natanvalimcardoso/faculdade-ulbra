import java.util.Scanner;

public class ex1 {
    public static void main(String[] args) throws Exception {
        
        double soma = 0;

        Scanner app3 = new Scanner(System.in);
        System.out.print("Valor do produto: ");
        double input = app3.nextInt();

        Scanner n = new Scanner(System.in);
        System.out.print("Porcentagem de desconto: ");
        double input2 = n.nextInt();

        input2 = ( input * input2  / 100 );
        soma = (input - input2);
        System.out.println(" O valor do produto é: " + input + " com um desconto de: "+ input2 + " ficando no total: "+soma);
        
    }
}
