
def sum_of_multiples_below(n, m1 = 3, m2 = 5)
  sum = 0
  for i in 1...n do
    sum += i if i % m1 === 0 || i % m2 === 0
  end
  sum
end

max_plus_one = ARGV.first ? ARGV.first.to_i : 10
start_time = Time.now
puts sum_of_multiples_below(max_plus_one)
puts "#{Time.now - start_time} seconds."
