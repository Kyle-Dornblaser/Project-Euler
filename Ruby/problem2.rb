def even_sum_fibonacci(n = 4000000)
  last = 1
  current = 2
  even_sum = 0
  while current < n do
    even_sum += current if current.even?
    temp = current
    current += last
    last = temp
  end
  even_sum
end

max_fib = ARGV.first ? ARGV.first.to_i : 10
puts even_sum_fibonacci(max_fib)
