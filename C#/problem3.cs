using System;
using System.Diagnostics;

class Problem3
{
  public static void Main(string[] args)
  {
    long numberTotest = 600851475143;
    if (args.Length > 0)
    {
      numberTotest = Convert.ToInt64(args[0]);
    }

    Stopwatch stopwatch = new Stopwatch();
    stopwatch.Start();
    Console.WriteLine(LargestPrimeFactor(numberTotest));
    stopwatch.Stop();
    Console.WriteLine(stopwatch.ElapsedMilliseconds / 1000.0 + " seconds");
  }

  public static long LargestPrimeFactor(long n)
  {
    long target = n;
    long largest = 0;
    long i = 1;
    long count = 0;
    while (i < target)
    {
      count++;
      i += 1;
      if (target % i == 0)
      {
        target /= i;
        if (Prime(i))
        {
          largest = i;
        }
      }
    }
    return largest;
  }

  private static bool Prime(long n)
  {
    long max = Convert.ToInt64(Math.Ceiling(Math.Sqrt(n)));
    bool prime = true;
    for (long i = 2; i < max; i++)
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
