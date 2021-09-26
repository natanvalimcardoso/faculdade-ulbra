package metodos;

public class metodo1 {
    private static Object idioma;

    public static void main(int idioma) {
        System.out.println("digite um numero de 1 a 6: ");
        int mes = Integer.parseInt(System.console().readLine());
        System.out.println("Escreva em ingles ou em portugues");
        String tipo = System.console().readLine();
        

    
        

    }

    public String[] getIdioma(String idioma, String[] ingles, String[] portugues) {

        if (idioma.equals("ingles")) {
            ingles = new String[4];
            return ingles;
        } else if (idioma.equals("portugues")) {
            portugues = new String[4];
            return portugues;
        }

        return portugues;
    }

    public int getAno(int ano) {
        switch (ano) {
            case 1:
                System.out.println("janeiro");
                break;
            case 2:
                System.out.println("fevereiro");
                break;
            case 3:
                System.out.println("março");
                break;
            case 4:
                System.out.println("abril");
                break;
            case 5:
                System.out.println("maio");
                break;
            case 6:
                System.out.println("junho");
                break;
        }
        return ano;
    }
}
