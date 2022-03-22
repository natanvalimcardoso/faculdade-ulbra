import java.util.Random;

public class ex7 {
    public static void main(String[] args) {

        Random random = new Random();
        int[][] matrix = new int[5][5];

        for (int i = 0; i < matrix.length; i++) {
            int j = 0;
            matrix[i][j] = random.nextInt(10);
            for (j = 0; j < matrix.length; j++) {
                matrix[i][j] = random.nextInt(10);
            }
        }
        
        for (int i = 0; i < matrix.length; i++) {
            int j = 0;
            for (j = 0; j < matrix.length; j++) {
                System.out.print(matrix[i][j]+", ");
            }
        }
    }
}