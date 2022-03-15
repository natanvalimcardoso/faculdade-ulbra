public class ex3 {
    public static void main(String[] args) {

        int valorMaior = 10;
        int valorMenor = 5;
        int valorJunto = valorMaior - valorMenor + 1;
        int senha = 0;

        int valor = (int) (Math.random() * valorJunto) + valorMenor;
        System.out.println("O valor sorteado é: " + valor);

        for (int i = valor; i > 0; i--) {
            senha = 1 + (int) (Math.random() * 9);
            System.out.print(senha  + "-");
        }
    }
}
