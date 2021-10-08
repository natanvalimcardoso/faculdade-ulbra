import java.util.Scanner;

public class metodoMes {
    static String[] mes = { "janeiro",  "março",  "maio"};
    static String[] mesIngles = {"February", "April", "June" };

    public static void main(String[] args) throws Exception {
        testar();
    }

    public static void testar() throws Exception {
        metodo1 tipo = new metodo1();

        var b = new Scanner(System.in);
        System.out.print("Digite os numeros de 1 a 6: ");
        int numero = b.nextInt();

        switch (numero) {
            case 1:
                System.out.println(mes[0]);
                break;
            case 2:
                System.out.println(mesIngles[0]);
                break;
            case 3:
                System.out.println(mes[1]);
                break;
            case 4:
                System.out.println(mesIngles[1]);
                break;
            case 5:
                System.out.println(mes[2]);
                break;
            case 6:
                System.out.println(mesIngles[2]);
                break;
            default:
        }
    }
}
