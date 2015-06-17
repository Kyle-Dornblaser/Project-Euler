require 'prime'

# Find sume of all primes below input
def sum_of_primes(highest_prime)
  sum = 0
  sum += 2 if highest_prime >= 2
  for i in (3...highest_prime).step(2)
    sum += i if Prime.prime?(i)
  end
  sum
end

max = ARGV.first ? ARGV.first.to_i : 2000000
puts sum_of_primes(max)
