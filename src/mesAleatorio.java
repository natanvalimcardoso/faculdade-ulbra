import java.util.Random;

public class array7 {
    public static void main(String[] args) {

        String[] mes = {"janeiro", "fevereiro", "março", "abril", "maio", "junho", "julho", "agosto", "setembro", "outubro", "novembro", "dezembro"};

        Random teste = new Random(); 
        int num = teste.nextInt(12);
        System.out.println(mes[num]);
    }
}
