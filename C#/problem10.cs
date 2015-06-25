using System;
using System.Diagnostics;

class Problem10
{
  public static void Main(string[] args)
  {
    int max = 2000000;
    if (args.Length > 0)
    {
      max = Convert.ToInt32(args[0]);
    }
    Stopwatch stopwatch = new Stopwatch();
    stopwatch.Start();
    Console.WriteLine(SumOfPrimes(max));
    stopwatch.Stop();
    Console.WriteLine(stopwatch.ElapsedMilliseconds / 1000.0 + " seconds");
  }

  public static long SumOfPrimes(int highestPrime)
  {
    long sum = 0;
    if (highestPrime >= 2)
    {
      sum += 2;
    }
    for (int i = 3; i < highestPrime; i+=2)
    {
      if (Prime(i))
      {
        sum += i;
      }
    }
    return sum;
  }

  public static bool Prime(int n)
  {
    long max = Convert.ToInt64(Math.Ceiling(Math.Sqrt(n)));
    bool prime = true;
    for (long i = 2; i <= max; i++)
    {
      if (n % i == 0)
      {
        prime = false;
        i = max;
      }
    }
    return prime;
  }
}
