package Projekt;

import java.util.Arrays;

public class Main {

    private static int min(int x, int y)
    {
        if (x < y)
            return x;
        else
            return y;
    }

    private static int minCost(int cost[][], int m, int n)
    {
        int i, j;
        int tc[][] = new int[m + 1][n + 1];

        tc[0][0] = cost[0][0];

        /* Initialize first column of total cost(tc) array */
        for (i = 1; i <= m; i++) {
            tc[i][0] = tc[i - 1][0] + cost[i][0];


        }

        /* Initialize first row of tc array */
        for (j = 1; j <= n; j++) {
            tc[0][j] = tc[0][j - 1] + cost[0][j];

        }
        /* Construct rest of the tc array */
            for (i = 1; i <= m; i++) {
                for (j = 1; j <= n; j++) {
                    tc[i][j] = min(tc[i - 1][j], tc[i][j - 1]) + cost[i][j];
                }

            }

                int t = m;
                int s = n;

                for(;t> 0||s> 0; ) {
                    if(s>=1 &&(tc[t][s] - cost[t][s]) == tc[t][s-1]){

                        System.out.println(cost[t][s-1] + "<-");
                        s--;
                    }
                else if(t>=1 &&(tc[t][s] - cost[t][s]) == tc[t-1][s]){

                    System.out.println(cost[t-1][s] + "↑");
                    t--;

                }

                }

        return tc[m][n];

    }

       public static void main(String[] args) {
        int[][] matrix =
                {
                        {2,0,3,2,5},//pierwszy wiersz
                        {4,4,1,2,5},//drugi wiersz
                        {11,12,15,4,5},//trzecia trzeci wiersz
                        {1,5,3,1,5},
                };
           System.out.println("minimum cost to reach" + " (3, 3) = " + minCost(matrix, 3, 4));

    }

}
