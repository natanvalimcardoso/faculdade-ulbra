public class exercicio_tres {
    /*
     * Faça um programa, que uma matriz seja criada de 3 por 3, essa Matriz
     * representa um estacionamento.Crie uma Classe para representar um veículo, com
     * placa modelo e cor.
     * 
     * O programa deve apresentar o seguinte menu:
     * A)Adicionar Carro
     * B)Remover Carro(coloca o valor null)
     * C)Limpar Estacionamento
     * D)Mostrar Estacionamento
     * E) Sair
     * 
     * Ao pressionar A no menu, o usuário irá informar a linha e coluna e o carro
     * que deseja adicionar. Se já existir um carro na posição o mesmo deve informar
     * ao usuário para aí sim sobrescrever o valor.
     * Ao pressionar R, o usuário deve informar a linha e coluna e o valor deve ser
     * apagado “0”;
     * Ao pressionar L, a matriz deve ser “limpa” adicionando o valor 0 em todos os
     * campos
     * Ao pressionar M, o programa deve mostrar a matriz e os valores;
     * Ao pressionar S, o programa deve para a execução;
     */

    public static void main(String[] args) {
        int matriz[][] = new int[3][3];
        int opcao = 0;

        System.out.println("Adicionar Carro (1)");
        System.out.println("Remover Carro (2)");
        System.out.println("Limpar Estacionamento (3)");
        System.out.println("Mostrar Estacionamento (4)");
        System.out.println("Sair (5)");
        do {
            System.out.println("\nDigite a opção desejada: ");
            opcao = Integer.parseInt(System.console().readLine());
            switch (opcao) {
                case 1:
                    System.out.println("Digite a linha e a coluna do carro que deseja adicionar: ");
                    int linha = Integer.parseInt(System.console().readLine());
                    int coluna = Integer.parseInt(System.console().readLine());
                    if (matriz[linha][coluna] == 0) {
                        System.out.println("carro adicionado com sucesso");
                        matriz[linha][coluna] = 1;
                    } else {
                        System.out.println("Já existe um carro nesta posição.");
                    }
                    break;
                case 2:
                    System.out.println("Digite a linha e a coluna do carro que deseja remover: ");
                    int linha1 = Integer.parseInt(System.console().readLine());
                    int coluna1 = Integer.parseInt(System.console().readLine());
                    matriz[linha1][coluna1] = 0;
                    break;
                case 3:
                System.out.println("Limpar Estacionamento");
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
