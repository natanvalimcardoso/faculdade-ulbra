public class bidimensional {
    public static void main(String[] args) {

        int imagem[][] = new int[40][40]; // classe bidimensional
        for (int i = 0; i < imagem.length; i++) { // repeti a quantidade de vezes
            for (int j = 0; j < imagem[i].length; j++) { //esse gera um numero de 1 a 40
                int valor = 1 + (int) (Math.random() * 255); // aleatoriza
                imagem[i][j] = valor;
                System.out.print(imagem[i][j] + " ");
            }
        }
    }
}
