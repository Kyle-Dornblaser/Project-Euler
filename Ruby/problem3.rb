def largest_prime_factor(n)
  target = n
  largest = 0
  i = 1
  count = 0
  while i < target do
    count = count + 1
    i += 1
    if target % i === 0
      target /= i
      largest = i if prime?(i)
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
