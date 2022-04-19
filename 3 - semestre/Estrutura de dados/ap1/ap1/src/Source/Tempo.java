package Source;
public class Tempo {

    private static long comeco;
    private static float total = 0;

    public static void start() {
       comeco = System.currentTimeMillis();
    }

    public static void stop() {
        float segundos = System.currentTimeMillis() - comeco;
        System.out.printf("\nO padrão encontrado foi em tantos: %.3f S\n", (segundos / 1000));
        total = total + segundos;
    }
}
