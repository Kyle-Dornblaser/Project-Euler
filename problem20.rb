
def sum_of_factorial_digits(n)
  sum = 0
  factorial = (1..n).reduce(:*)
  factorial.to_s.each_char do |digit|
    sum += digit.to_i
  end
  sum
end

n = ARGV.first ? ARGV.first.to_i : 10
start_time = Time.now
puts sum_of_factorial_digits(n)
puts "#{Time.now - start_time} seconds."
