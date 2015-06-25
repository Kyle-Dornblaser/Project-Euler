using System;
using System.Diagnostics;

class Problem7
{
  public static void Main(string[] args)
  {
    int n = 10001;
    if (args.Length > 0)
    {
      n = Convert.ToInt32(args[0]);
    }
    Stopwatch stopwatch = new Stopwatch();
    stopwatch.Start();
    Console.WriteLine("Approximately: " + ApproximateNthPrime(n));
    stopwatch.Stop();
    Console.WriteLine(stopwatch.ElapsedMilliseconds / 1000.0 + " seconds");

    stopwatch.Start();
    Console.WriteLine("Exactly: " + NthPrime(n));
    stopwatch.Stop();
    Console.WriteLine(stopwatch.ElapsedMilliseconds / 1000.0 + " seconds");

  }

  public static int NthPrime(int n)
  {
    int primesFound = 0;
    int candidate = 0;
    while (primesFound < n)
    {
      candidate++;
      if (Prime(candidate))
      {
        primesFound++;
      }
    }

    return candidate;
  }

  public static int ApproximateNthPrime(int n)
  {
    int approximate = Convert.ToInt32(n * System.Math.Log(n));
    return approximate;
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
