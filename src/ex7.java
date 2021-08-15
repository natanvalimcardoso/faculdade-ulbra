import java.util.Scanner;

public class ex7 {
    public static void main(String[] args) throws Exception {

        
        boolean confirmador = false;
        int tentativa = 0;

        do {
            Scanner a = new Scanner(System.in);
            System.out.print("Digite o seu email: ");
            String email = a.nextLine();
//conta
            Scanner c = new Scanner(System.in);
            System.out.print("Digite a sua senha: ");
            String senha = c.nextLine();

            if (email.equals("java8") && senha.equals("java8")) {  //email.equals("m") && senha.equals("m")
                System.out.println("Você se conectou na sua conta do JAVA! e foram um total de: " +tentativa +" tentativas" );
                confirmador = true;
            }else{
            System.out.println("Errou a senha tente novamente ");
            tentativa++;
            }

        } while (confirmador == false && tentativa < 3);
    }
}
