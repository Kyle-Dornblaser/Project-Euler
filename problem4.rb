def largest_palindrome_product(digits = 3)
  largest = 0
  min = ('1' + '0' * (digits -1)).to_i
  max = ('9' * digits).to_i
  count = 0
  max.downto(min) do |i|
    # prevent unnecessary loops
    return largest if i ** 2 < largest
    max.downto(min) do |j|
      proudct = i * j
      if palindrome?(proudct) && proudct > largest
        largest = proudct
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
time1 = Time.now
puts largest_palindrome_product(number_to_test)
time2 = Time.now
puts time2 - time1
