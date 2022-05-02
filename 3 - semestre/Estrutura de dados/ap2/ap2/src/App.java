public class App {

    public static void main(String[] args) throws Exception {

        var insert = new InsertSort();
        var select = new SelectSort();
        var shell = new ShellSort();

        Cronometro cronometroInsert = new Cronometro();
        Cronometro cronometroSelect = new Cronometro();
        Cronometro cronometroShell = new Cronometro();


        //  int[] iniciaValores = {5, 1 , 12, -5, 16, 2, 12, 14};

        int arraySize[] = new int[100];

        int arrayInsert[] = new int[arraySize.length];
        int arraySelect[] = new int[arraySize.length];
        int arrayShell[] = new int[arraySize.length];

        System.out.println("A array é:");
        for (int i = 0; i < arraySize.length; i++) {
            arraySize[i] = (int) (Math.random() * 100);
            System.out.print(arraySize[i] + "-");
        }
        System.out.println("\n----------------------------------------------------------------------------------\n");
        
        

        arrayInsert = arraySize.clone();
        arraySelect = arraySize.clone();
        arrayShell = arraySize.clone();


        // //////////////////////////////////////////// *Shell Sort //////////////////////////////////////////// *////////////////////////////////////////////
        System.out.println("Array ShellSort: \n");

        shell.shellSort(arrayShell);

        cronometroShell.start();
        for (int i = 0; i < arrayShell.length; i++) {
            System.out.print(arrayShell[i] + " ");
        }
        cronometroShell.stop();
        cronometroShell.print();

        System.out.println("\n----------------------------------------------------------------------------------\n");

        // // ////////////////////////////////////////////* Insert Sort  // *////////////////////////////////////////////
        System.out.println("Array InsertSort: \n");

        insert.insertionSort(arrayInsert, arrayInsert.length);

        cronometroInsert.start();
        for (int i = 0; i < arrayInsert.length; i++) {
            System.out.print(arrayInsert[i] + " ");
        }
        cronometroInsert.stop();
        cronometroInsert.print();
        
        System.out.println("\n----------------------------------------------------------------------------------\n");
        // ////////////////////////////////////////////* Select Sort// *////////////////////////////////////////////
        System.out.println("Array SelectSort: \n");

        select.selectionSort(arraySelect);
        
        cronometroSelect.start();
        for (int i = 0; i < arraySelect.length; i++) {
        System.out.print(arraySelect[i] + " ");
        }
        cronometroSelect.stop();
        cronometroSelect.print();
    }
}
