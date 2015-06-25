def sum_square_difference(n)
  sum_of_squares = (n ** 3.0 / 3.0) + (n ** 2.0 / 2.0) + (n / 6.0)
  square_of_sum = ((n * (n + 1.0)) / 2.0) ** 2.0
  difference = square_of_sum - sum_of_squares
  difference === Float::INFINITY ? difference : difference.to_i
end

max = ARGV.first ? ARGV.first.to_i : 10
start_time = Time.now
puts sum_square_difference(max)
puts "#{Time.now - start_time} seconds."
