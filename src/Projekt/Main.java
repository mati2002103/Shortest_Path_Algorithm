package Projekt;

public class Main {
    public static void main(String[] args) {
        int[][] matrix =
                {
                        {4, 4, 6, 5, 5, 1, 1, 1, 7, 4},//pierwszy wiersz
                        {3, 6, 2, 4, 6, 5, 7, 2, 6, 6},//drugi wiersz
                        {1, 3, 6, 1, 1, 1, 7, 1, 4, 5},//trzecia trzeci wiersz
                        {7, 5, 6, 3, 1, 3, 3, 1, 1, 7},
                        {3, 4, 6, 4, 7, 2, 6, 5, 4, 4}

                };
        int r = matrix.length;
        int k = matrix[0].length;
        System.out.println("Liczba kolumn: "+k+"\nLiczba wierszy: " +r);

        for (int i = 0; i < matrix.length; i++) { //this equals to the row in our matrix.
            for (int j = 0; j < matrix[i].length; j++) { //this equals to the column in each row.
                System.out.print(matrix[i][j] + " ");
            }

            System.out.println(); //change line on console as row comes to end in the matrix.
        }
        //matrix[wiersze od 0][kolumny od 0]
        System.out.println(matrix[3][9]);
    }
}
