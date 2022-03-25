/*Faça um programa, que uma matriz seja criada de 4 por 4 contento valor 0 em todos os campos.O programa deve apresentar o seguinte menu:
Adicionar elemento
 Remover elemento(coloca o valor 0)
Limpar Matriz
Mostrar Matriz
Sair
Ao pressionar A no menu, o usuário irá informar a linha e coluna e o elemento que deseja adicionar. Se já existir um valor na posição o mesmo deve informar ao usuário para aí sim sobrescrever o valor.
Ao pressionar R, o usuário deve informar a linha e coluna e o valor deve ser apagado “0”;
Ao pressionar L, a matriz deve ser “limpa” adicionando o valor 0 em todos os campos
Ao pressionar M, o programa deve mostrar a matriz e os valores;
Ao pressionar S, o programa deve para a execução;
IMPORTANTE o programa deve validar os índices da matriz e as opções do menu;
*/

public class exercicio_dois {
    public static void main(String[] args) {
        int matriz[][] = new int[4][4];
        int opcao = 0;

        System.out.println("Adicionar elemento (1)");
        System.out.println("Remover elemento (2)");
        System.out.println("Limpar Matriz (3)");
        System.out.println("Mostrar Matriz (4)");
        System.out.println("Sair (5)");

        do {
            System.out.println("\nDigite a opção desejada: ");
            opcao = Integer.parseInt(System.console().readLine());

            switch (opcao) {
                case 1:
                    System.out.println("Digite a linha e a coluna do elemento que deseja adicionar: ");
                    int linha = Integer.parseInt(System.console().readLine());
                    int coluna = Integer.parseInt(System.console().readLine());
                    System.out.println("Digite o valor do elemento: ");
                    int valor = Integer.parseInt(System.console().readLine());
                    matriz[linha][coluna] = valor;
                    break;
                case 2:
                    System.out.println("Digite a linha e a coluna do elemento que deseja remover: ");
                    linha = Integer.parseInt(System.console().readLine());
                    coluna = Integer.parseInt(System.console().readLine());
                    matriz[linha][coluna] = 0;
                    break;
                case 3:
                    for (int i = 0; i < matriz.length; i++) {
                        for (int j = 0; j < matriz[i].length; j++) {
                            matriz[i][j] = 0;
                        }
                    }
                    break;
                case 4:
                    for (int i = 0; i < matriz.length; i++) {
                        for (int j = 0; j < matriz[i].length; j++) {
                            System.out.print(matriz[i][j] + " ");
                        }
                        System.out.println();
                    }
                    break;
                case 5:
                    System.out.println("Saindo...");
                    break;
                default:
                    System.out.println("Opção inválida!");
                    break;
            }
        } while (opcao != 5);
    }

}
