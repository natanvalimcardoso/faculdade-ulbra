public class ShellSort {
    public void shellSort(int arrayToSort[]) {
        int n = arrayToSort.length;
        int comparacao = 0;

    
        for (int gap = n / 2; gap > 0; gap /= 2) {
            for (int i = gap; i < n; i++) {
                int key = arrayToSort[i];
                int j = i;
                comparacao++;
                while (j >= gap && arrayToSort[j - gap] > key) {
                    arrayToSort[j] = arrayToSort[j - gap];
                    j -= gap;
                    comparacao++;
                }
                
                arrayToSort[j] = key;
            }
        }
        System.out.println("A quantidade de comparações do Shell foi: " + comparacao + "\n");

    }

}
