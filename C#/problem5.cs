using System;
using System.Diagnostics;

class Problem5
{
  public static void Main(string[] args)
  {
    int min = 1;
    int max = 10;
    if (args.Length > 1)
    {
      min = Convert.ToInt32(args[0]);
      max = Convert.ToInt32(args[1]);
    }

    Stopwatch stopwatch = new Stopwatch();
    stopwatch.Start();
    Console.WriteLine(SmallestMultiple(min, max));
    stopwatch.Stop();
    Console.WriteLine(stopwatch.ElapsedMilliseconds / 1000.0 + " seconds");
  }

  public static int SmallestMultiple(int min, int max)
  {
    int smallest = min;
    bool found = false;
    for (int i = min; !found; i++)
    {
      bool multipleForAll = true;
      for (int j = min; j < max && multipleForAll; j++)
      {
        if (i % j != 0)
        {
          multipleForAll = false;
        }
      }
      if (multipleForAll)
      {
        smallest = i;
        found = true;
      }
    }
    return smallest;
  }
}
