import java.util.ArrayList;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {

        Scanner input = new Scanner(System.in);

        ArrayList<Serie> listSeries = new ArrayList<Serie>();

        int op = 0;
        do {
            System.out.println("Digite 1 para adicionar serie"); // feito
            System.out.println("Digite 2 para remover serie"); // feito
            System.out.println("Digite 3 para mostrar todas as series"); // feito
            System.out.println("Digite 4 para pesquisar uma série e assistir"); // feito


            Serie serie = new Serie();

            op = input.nextInt();

            switch (op) {
            case 1: {
                serie.lerSerieDeTv();
                listSeries.add(serie);
                break;
            }
            case 2: {
                System.out.println("Digite a posição para remover");
                int posicao = input.nextInt();
                Serie apagar = listSeries.remove(posicao);
                if (apagar != null) {
                    System.out.println("Serie apagado " + apagar.titulo);
                } else {
                    System.out.println("Nao encontrei");
                }
                break;
            }
            case 3: {
                for (int i = 0; i < listSeries.size(); i++) {
                    listSeries.get(i).exibirInfo(i);
                }
                break;
            }
            case 4: {

                int o = 0;
                do {
                    System.out.println("Pesquise a serie que deseja assistir: ");
                    String nome = input.next();
                    for (int i = 0; i < listSeries.size(); i++) {

                        listSeries.get(i);
                        if (listSeries.get(i).titulo.equals(nome)) {
                            o = 2;
                            System.out.println("Filme selecionado assistido!");
                            listSeries.get(i).serieAssistida = "Assistida";
                        }
                    }
                    if (o != 2) {
                        System.out.println("Serie não encontrada!");
                    }

                } while ((o < 0));
                break;
            }
            }

        } while (op != 0);

    }
}
