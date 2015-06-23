def sum_of_digits(n)
  sum = 0
  n.to_s.each_char do |digit|
    sum += digit.to_i
  end
  sum
end

n = ARGV.first ? ARGV[0].to_i : 2 ** 1000
start_time = Time.now
puts sum_of_digits(n)
puts "#{Time.now - start_time} seconds."
