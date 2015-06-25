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
start_time = Time.now
puts "Pn approximately is: #{approximate_nth_prime(n)}"
puts "#{Time.now - start_time} seconds."
start_time = Time.now
puts "Pn is: #{nth_prime(n)}"
puts "#{Time.now - start_time} seconds."
