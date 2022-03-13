import java.util.HashMap;
import java.util.Map;

public class Atv1 {
    public static void main(String[] args) throws Exception {

        Map<Integer, String> tempSemana = new HashMap<>();
        tempSemana.put(1, "Domingo");
        tempSemana.put(2, "Segunda");
        tempSemana.put(3, "Terça");
        tempSemana.put(4, "Quarta");
        tempSemana.put(5, "Quinta");
        tempSemana.put(6, "Sexta");
        tempSemana.put(7, "Sábado");

        var mediaTemperatura = tempSemana.keySet() // Retorna um Set com os valores
                .stream() // Transforma o Set em Stream
                .mapToInt(Integer::intValue) // Transforma o Set em Int
                .average();// Retorna a média 

        System.out.println("Média de temperatura: " + mediaTemperatura);

    }
}
