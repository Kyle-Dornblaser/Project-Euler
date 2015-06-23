def nth_prime(n)
  primes_found = 0
  candidate = 0
  while(primes_found < n) do
    candidate += 1
    primes_found += 1 if prime?(candidate)
  end
  candidate
end

def approximate_nth_prime(n)
  (n * Math.log(n)).to_i
end

def prime?(n)
  max = Math.sqrt(n).ceil
  for i in 2..max
    return false if n % i === 0
  end
  true
end

n = ARGV.first ? ARGV.first.to_i : 10001
puts "Pn approximately is: #{approximate_nth_prime(n)}"
puts "Pn is: #{nth_prime(n)}"
