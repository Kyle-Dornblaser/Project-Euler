using System;
using System.Diagnostics;

class Problem1
{
  public static void Main(string[] args)
  {
    long max_plus_one = 10;
    if (args.Length > 0)
    {
      max_plus_one = Convert.ToInt64(args[0]);
    }

    Stopwatch stopwatch = new Stopwatch();
    stopwatch.Start();
    long sum = SumOfMultiplesBelow(max_plus_one);
    stopwatch.Stop();
    Console.WriteLine(sum);
    Console.WriteLine(stopwatch.ElapsedMilliseconds / 1000.0 + " seconds");
  }

  private static long SumOfMultiplesBelow(long n, int m1 = 3, int m2 = 5)
  {
    long sum = 0;
    for (int i = 1; i < n; i++)
    {
      if (i % m1 == 0 || i % m2 == 0)
      {
        sum += i;
      }
    }
    return sum;
  }
}
