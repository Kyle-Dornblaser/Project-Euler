using System;
using System.Diagnostics;

class Problem2
{
  public static void Main(string[] args)
  {
    long maxFib = 10;
    if (args.Length > 0)
    {
      maxFib = Convert.ToInt64(args[0]);
    }
    Stopwatch stopwatch = new Stopwatch();
    stopwatch.Start();
    Console.WriteLine(EvenSumFibonacci(maxFib));
    stopwatch.Stop();
    Console.WriteLine(stopwatch.ElapsedMilliseconds / 1000.0 + " seconds");
  }

  private static long EvenSumFibonacci(long n)
  {
    long last = 1;
    long current = 2;
    long evenSum = 0;
    while (current < n)
    {
      if (current % 2 == 0)
      {
        evenSum += current;
      }
      long temp = current;
      current += last;
      last = temp;
    }
    return evenSum;
  }
}
