import java.util.Random;

public class Atv-2 {
    public static void main(String[] args) {
        Random random = new Random();
        int[] array = new int[10];
        
        for (int i = 0; i < array.length; i++) {
                array[i] = random.nextInt(0,100);
        }
        
        boolean alert = true;
        for (int i = 0; i < array.length; i++) {
            if (array[i] > 50) {
                System.out.println(i + "| " + array[i]);
                alert = false;
            }
        }
        
        if (showMessage) {
            System.out.println("Nenhum numero acima de 50);
        }

        }
    }
