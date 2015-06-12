def largest_prime_factor(n)
  # save time by returning prime numbers
  return n if prime?(n)
  largest = 0

  max = Math.sqrt(n).ceil
  for i in 2..max
    puts "#{i}: #{max - i} remaining" if i % 1000 === 0
    if n % i === 0
      # factor1 should always be smaller than factor2
      factor1 = i
      factor2 = n / i
      if prime?(factor2)
        largest = factor2
      elsif prime?(factor1)
        largest = factor1
      end
    end
  end
  largest
end

def prime?(n)
  max = Math.sqrt(n).ceil
  for i in 2..max
    return false if n % i === 0
  end
  true
end

number_to_test = ARGV.first ? ARGV.first.to_i : 600851475143
puts largest_prime_factor(number_to_test)
