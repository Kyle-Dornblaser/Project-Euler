using System;
using System.Diagnostics;

class Problem9
{
  public static void Main(string[] args)
  {
    Stopwatch stopwatch = new Stopwatch();
    stopwatch.Start();
    Console.WriteLine(SpecialPythagoreanTriplet());
    stopwatch.Stop();
    Console.WriteLine(stopwatch.ElapsedMilliseconds / 1000.0 + " seconds");
  }

  public static int SpecialPythagoreanTriplet()
  {
    int specialSum = 1000;
    int specialProduct = 0;
    for (int i = 1; i < specialSum - 1 && specialProduct == 0; i++)
    {
        for (int j = 1; j < specialSum - 1; j++)
        {
          int[] triplet = new int[] {i, j, specialSum - i - j};
          Array.Sort(triplet);
          if ((triplet[2] + triplet[1] + triplet[0] == specialSum) &&
              (Math.Pow(triplet[0], 2) + Math.Pow(triplet[1], 2) ==
              Math.Pow(triplet[2], 2)))
          {
            specialProduct = triplet[0] * triplet[1] * triplet[2];
          }
        }
    }
    return specialProduct;
  }
}
