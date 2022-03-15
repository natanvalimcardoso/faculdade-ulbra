import java.util.Scanner;

public class App2 {
    public static void main(String[] args) throws Exception {
        double soma = 0;
        
        Scanner app2 = new Scanner(System.in);
        System.out.print("Digite quantos segundos: "); //Como dar um escreva, leia.
        double input = app2.nextInt();

        soma = ( input * 1100); 
        
        System.out.println("A distancia em pes é de: " + soma +" pés" );
        
    }
}
