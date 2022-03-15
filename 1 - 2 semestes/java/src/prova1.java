

public class prova1 {
    public static void main(String[] args) {

        int[] numeros = new int[100];
        String[] frutas = { "maça", "Pera", "Abacaxi", "Mamãoo" };
        String busca = "Pera";

        numeros[0] = 3;
        numeros[1] = 4;
        for (int i = 0; i < frutas.length; i++) {
            if (busca.equals(frutas[i])) {

                System.out.println(frutas[i].toLowerCase());
                System.out.println(frutas[i].length());
                System.out.println(frutas[i].charAt(0));
            }
        }
    }
}
