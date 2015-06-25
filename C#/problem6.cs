using System;
using System.Diagnostics;

class Problem6
{
  public static void Main(string[] args)
  {
    int max = 10;
    if (args.Length > 0)
    {
      max = Convert.ToInt32(args[0]);
    }

    Stopwatch stopwatch = new Stopwatch();
    stopwatch.Start();
    Console.WriteLine(SumSquareDifference(max));
    stopwatch.Stop();
    Console.WriteLine(stopwatch.ElapsedMilliseconds + " seconds");
  }

  public static int SumSquareDifference(int n)
  {
    double sumOfSquares = (n * n * n / 3.0) + (n * n / 2.0) + (n / 6.0);
    double squareOfSum = ((n * (n + 1.0)) / 2.0 ) * ((n * (n + 1.0)) / 2.0 );
    double difference = squareOfSum - sumOfSquares;
    return Convert.ToInt32(difference);
  }
}
