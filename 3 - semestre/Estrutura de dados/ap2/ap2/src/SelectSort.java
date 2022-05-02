public class SelectSort {
    
    public void selectionSort(int[] array) {
        int comparacao = 0;

        for (int i = 0; i < array.length - 1; i++) {
            int index = i;
            for (int j = i + 1; j < array.length; j++) {
                if (array[j] < array[index]) {
                    index = j;
                    comparacao++;
                }
              
            }
            int smallerNumber = array[index];
            array[index] = array[i];
            array[i] = smallerNumber;
        }
        
        System.out.println("A quantidade de comparações do Select foi: " + comparacao + "\n");
    }

}
