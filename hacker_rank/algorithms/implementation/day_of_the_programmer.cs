using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
class Solution {

    static string solve(int year){
        if (year == 1918)
            return "26.09.1918";
        if (year > 1918)
            return new DateTime(year, 1, 1).AddDays(255).ToString("dd.MM.yyyy");
        if (year % 4 == 0)
            return "12.09." + year;
        return "13.09." + year;
    }
  
    static void Main(String[] args) {
        int year = Convert.ToInt32(Console.ReadLine());
        string result = solve(year);
        Console.WriteLine(result);
    }
}
