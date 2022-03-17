import java.util.Scanner;
//ready
public class Atv-4 {
    public static void main(String[] args) {
        
        Scanner input = new Scanner(System.in);
      
        double[] list = {13,32.1,8,2,21};
      
        int number = 0;

        do {
            System.out.println("0 = SAIR | 1 = MOSTRAR | 2 = INVERTIDA);
            choice = input.nextInt();
            
            if(number == 1){
                for (int i = 0; i < list.length; i++) {
                    System.out.print( list[i] + ", ");
                }
            }
            
            if (number == 2) {
                for (int i = list.length-1; i != -1; i--) {
                    System.out.print(list[i]);
                }
                System.out.println();
            }

        } while (number != 0);

    }
}
