public class ex1 {
    public static void main(String[] args) {

        int valor = 0;
        int soma = 0;

        for (int i = 1; i <= 3; i++) {
            valor = 1 + (int) (Math.random() * 6);
            System.out.println(" O valor da "+ i + " Jogada é: " +valor);

            soma = valor + soma;
        }
        System.out.println("\nA soma dos 3 dados é: " + soma);
    }
}
