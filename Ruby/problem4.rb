def largest_palindrome_product(digits = 3)
  largest = 0
  min = ('1' + '0' * (digits -1)).to_i
  max = ('9' * digits).to_i
  count = 0
  max.downto(min) do |i|
    # prevent unnecessary loops
    return largest if i * max < largest
    max.downto(min) do |j|
      product = i * j
      if palindrome?(product) && product > largest
        largest = product
      end
    end
  end
  largest
end

def palindrome?(n)
  original = n.to_s
  reverse = original.reverse
  original === reverse
end

number_to_test = ARGV.first ? ARGV.first.to_i : 3
start_time = Time.now
puts largest_palindrome_product(number_to_test)
puts "#{Time.now - start_time} seconds."
