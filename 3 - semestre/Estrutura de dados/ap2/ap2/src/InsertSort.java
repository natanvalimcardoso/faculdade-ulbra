public class InsertSort {

    void insertionSort(int arr[], int n) {
        int i, key, j;
        int comparacao= 0;

        for (i = 1; i < n; i++) {
            key = arr[i];
            j = i - 1;

            while (j >= 0 && arr[j] > key) {
                arr[j + 1] = arr[j];
                j = j - 1;
                comparacao++;
            }
            
            arr[j + 1] = key;
        }
        System.out.println("A quantidade de comparacao do insert foi: " + comparacao + "\n");
    }
}
