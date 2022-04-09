package Source;
public class Cronometro {
    private static long inicio;
    private static float total = 0;

    public static void start() {
       inicio = System.currentTimeMillis();
    }

    public static void stop() {
        float segundos = System.currentTimeMillis() - inicio;
        System.out.printf("\nPadrão encontrado em: %.3f S\n", (segundos / 1000));
        total = total + segundos;
    }
}
