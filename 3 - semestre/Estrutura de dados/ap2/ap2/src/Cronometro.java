public class Cronometro {

    long comeco;
    long para;

    public void start() {
        comeco = System.currentTimeMillis();
    }

    public void stop() {
        para = System.currentTimeMillis();
    }

    public void print() {
        System.out.println("\n\nTempo gasto: " + (para - comeco) + " milisegundos \n");
    }

}
