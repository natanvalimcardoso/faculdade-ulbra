import java.util.Scanner;

public class ex6 {
    public static void main(String[] args) throws Exception {

        int[] resist = new int[4];
        var soma = 0;
        var valorMenor = 0;
        var valorMaior = 0;

        for (int i = 0; i < 4; i++) {
            Scanner a = new Scanner(System.in);
            System.out.print("Valores da resistencia: ");
            int input = a.nextInt();

            resist = new int[4];
            resist[0] = input;
            resist[1] = input;
            resist[2] = input;
            resist[3] = input;

            soma = (resist[0] + resist[1] + resist[2] + resist[3]);

            if (resist[0] > resist[1] && resist[0] > resist[2] && resist[0] > resist[3]) {
                valorMaior = input;
            } else if (resist[1] > resist[0] && resist[1] > resist[2] && resist[1] > resist[3]) {
                valorMaior = input;
            } else if (resist[2] > resist[0] && resist[2] > resist[1] && resist[2] > resist[3]) {
                valorMaior = input;
            } else {
                valorMaior = input;
            }

            if (resist[0] < resist[1] && resist[0] < resist[2] && resist[0] < resist[3]) {
                valorMenor = input;
            } else if (resist[1] < resist[0] && resist[1] < resist[2] && resist[1] < resist[3]) {
                valorMenor = input;
            } else if (resist[2] < resist[0] && resist[2] < resist[1] && resist[2] < resist[3]) {
                valorMenor = input;
            } else {
                valorMenor = input;
            }

        }
        System.out.println("A resistencia equivalente é de: " + soma + "Já a maior resistencia é a: " + valorMaior + " E a resistencia menor é a: " +valorMenor );
    }
}
