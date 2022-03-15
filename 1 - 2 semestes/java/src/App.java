import java.util.Scanner;

public class App {
    public static void main(String[] args) throws Exception {
        double soma = 0;
        
        Scanner app1 = new Scanner(System.in);
        System.out.print("Digite quantos segundos: ");
        double input = app1.nextInt();

        soma = ( input * 1100);
        
        System.out.println("A distancia em pes é de: " + soma +" pés" );
        
    }
}
