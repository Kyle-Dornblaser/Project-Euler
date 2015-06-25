using System;
using System.Diagnostics;

class Problem4
{
  public static void Main(string[] args)
  {
    Stopwatch stopwatch = new Stopwatch();
    long numberToTest = 3;
    if (args.Length > 0)
    {
      numberToTest = Convert.ToInt64(args[0]);
    }
    stopwatch.Start();
    Console.WriteLine(LargestPalindromeProduct(numberToTest));
    stopwatch.Stop();
    Console.WriteLine(stopwatch.ElapsedMilliseconds / 1000.0 + " seconds");
  }

  public static long LargestPalindromeProduct(long digits)
  {
    long largest = 0;
    long min = 1;
    for (long i = 1; i < digits; i++)
    {
      min *= 10;
    }
    long max = (min * 10) - 1;
    for (long i = max; i >= min; i--)
    {
      if (i * max < largest)
      {
        break;
      }
      for (long j = max; j >= min; j--)
      {
        long product = i * j;
        //Console.WriteLine("i: " + i + "\t j: " + j + "\t product: " + product);
        if (IsPalindrome(product) && product > largest)
        {
          largest = product;
        }
      }
    }
    return largest;
  }

  public static bool IsPalindrome(long n)
  {
    string original = n.ToString();
    string reverse = ReverseString(original);
    bool palindrome;
    if (original == reverse)
    {
      palindrome = true;
    }
    else
    {
      palindrome = false;
    }
    return palindrome;
  }

  public static string ReverseString(string s)
   {
     char[] arr = s.ToCharArray();
     Array.Reverse(arr);
     return new string(arr);
   }
}
