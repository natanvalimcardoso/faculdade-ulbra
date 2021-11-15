import java.util.Scanner;

public class Serie {

    public int temporadas;
    public int epTotais;
    public String sinopse;
    public String titulo;
    public String serieAssistida = "Não assistido!";
    Scanner input = new Scanner(System.in);

    public void lerSerieDeTv() {

        System.out.println("Informe o nome da serie: ");
        titulo = input.next();
        System.out.println("Informe quantas temporadas tem a série: ");
        temporadas = input.nextInt();
        System.out.println("Informe a quantidade de episódios da série: ");
        epTotais = input.nextInt();
        System.out.println("Informe a sinopse da série:  ");
        sinopse = input.next();

    }

    public void exibirInfo(int valor) {

        System.out.println("\n Titulo: " + this.titulo + " |" + " Temporadas: " + this.temporadas + " |" + " Episodios: "
                + this.epTotais + " |" + " Sinopse: " + this.sinopse + " |" + " Posição: " + valor +  " |" + " Assistido: " + this.serieAssistida + "\n");
    }

    public Serie(String nome) {
        this.titulo = nome;
    }

    public Serie() {

    }
    

}
