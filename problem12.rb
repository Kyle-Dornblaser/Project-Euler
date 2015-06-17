def highly_divisible_triangle_number(desired_divisors)

  i = 1
  while true do
    triangle_num = i * (i + 1) / 2
    actual_divisors = divisors(triangle_num)
    return triangle_num if actual_divisors >= desired_divisors
    i+= 1
  end
  triangle_num
end

def divisors(n)
  factors = []
  target = n
  i = 1
  for i in 1..Math.sqrt(n) do
      if n % i === 0
        factors << i
        factors << n / i
      end
  end
  factors.uniq.size
end
num_divisors = ARGV.first ? ARGV.first.to_i : 500
start_time = Time.now
puts highly_divisible_triangle_number(num_divisors)
puts "#{Time.now - start_time} seconds."
