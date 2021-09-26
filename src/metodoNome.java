package metodos;

public class metodo {
    String nome = "João";
    String sobrenome = "Santos";
    String nomeCompleto = nome + " " + sobrenome;
    
    public static void main(String[] args) throws Exception {
        testar();
    }

    public static void testar() {
        metodo m = new metodo();
        System.out.println(m.nomeCompleto);
    }
    public static void getMesPorExtenso(int a, int b) {
        
    }
}
