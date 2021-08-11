import java.util.Scanner;

public class ex2 {
    public static void main(String[] args) throws Exception {

        double imposto = 0;
        double soma = 0;
        double valor = 0;
        int aqui2 = 0;
        int aqui = 0;


            Scanner a = new Scanner(System.in);
            System.out.print("Valor da transação: ");
            double input = a.nextInt();

            Scanner b = new Scanner(System.in);
            System.out.print("Valor venal: ");
            double input2 = b.nextInt();

            Scanner c = new Scanner(System.in);
            System.out.print("Valor da 2 transação: ");
            double input3 = c.nextInt();

            Scanner d = new Scanner(System.in);
            System.out.print("Valor 2 venal: ");
            double input4 = d.nextInt();

            if (input > input3) {

                imposto = (input * input2 / 100);
                soma = input + imposto;
                aqui++;
            }
            else {
                imposto = (input3 * input4 / 100);
                soma = input3 + imposto;
                aqui2++;
            }
            if(aqui > aqui2){
                valor = input;
            }
            else{
                valor = input3;
            }

        System.out.println(" O maior valor dentre os 2 é o : "+valor+ " E Com imposto fica:" + soma);
    }
}
