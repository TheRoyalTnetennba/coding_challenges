using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
class Solution {

    static int bonAppetit(int n, int k, int b, int[] ar) {
      int sum = 0;
      for (int i = 0; i < n; i++) {
        if (i != k) {
          sum += ar[i];
        }
      }
      return b - (sum / 2);
    }

    static void Main(String[] args) {
        string[] tokens_n = Console.ReadLine().Split(' ');
        int n = Convert.ToInt32(tokens_n[0]);
        int k = Convert.ToInt32(tokens_n[1]);
        string[] ar_temp = Console.ReadLine().Split(' ');
        int[] ar = Array.ConvertAll(ar_temp,Int32.Parse);
        int b = Convert.ToInt32(Console.ReadLine());
        int result = bonAppetit(n, k, b, ar);
        if (result != 0) {
          Console.WriteLine(result);
        } else {
          Console.WriteLine("Bon Appetit");
        }
        
    }
}
