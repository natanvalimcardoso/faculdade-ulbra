import java.util.Random;

public class Atv3 {
    public static void main(String[] args) {
        Random random = new Random();

        int[] arrayUm = new int[10];
        int[] arrayDois = new int[5];
        int[] resultUm = new int[10];
        int[] resultDois = new int[10];

        int arrayCerta= 0;
        
        for (int i = 0; i < arrayDois.length; i++) {
            arrayDois[i] = random.nextInt(0,100);
            if (i < 5) {
                arrayUm[i] = random.nextInt(0,100);
                arrayCerta += array5[i];
            }
        }
      
      ///////////////////
      
        int resultOne= 0;
        int resultTwo = 0;
      
      
        for (int i = 0; i < resultOne.length; i++) {
          
            if (arrayDois[i] % 2 == 0) {
                resultUm[resultOne] = arrayDois[i] + arrayCerta;
                resultOne++;
            }else{
                resultTwo[resultTwo] = arrayTwo[i] + arrayCerta;
                resultTwo++;
            }
        }

        System.out.println("Array Um ");
        for (int i = 0; i < arrayDois.length; i++) {
            System.out.print(resultOne[i]);
        }

        System.out.println("Array Dois ");
        for (int i = 0; i < arrayDois.length; i++) {
            System.out.print(resultDois[i]);
        }
    }
}
