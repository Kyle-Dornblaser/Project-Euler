using System;

class Problem1
{
  public static void Main()
  {
    int n = 1000;
    int m1 = 3;
    int m2 = 5;
    int sum = 0;
    for (int i = 1; i < n; i++)
    {
      if (i % m1 == 0 || i % m2 == 0)
      {
        sum += i;
      }
    }
    Console.WriteLine(sum);
  }
}
