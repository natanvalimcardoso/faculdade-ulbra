import java.util.Scanner;

public class ex2 {
    public static void main(String[] args) {

        double soma = 0;
        double teste = 0;
    
        do { 
            Scanner entrada = new Scanner(System.in);
            System.out.print("Valor dos produtos: ");
            double valor = entrada.nextDouble();

            teste = valor;
            soma = (valor * 0.12 + valor);

            System.out.println(Math.round(soma));
        } while (teste != 0);
        
    }
}
