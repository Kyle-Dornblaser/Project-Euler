def longest_collatz_sequence(highest_start)
  longest = 0
  starting_number = 0
  for i in 1..highest_start
    length = collatz_sequence_length(i)
    if length > longest
      longest = length
      starting_number = i
    end
  end
  starting_number
end

def collatz_sequence_length(n)
  chain = []
  while chain.last != 1 do
    chain << n
    if n.even?
      n /= 2
    else
      n = 3 * n + 1
    end
  end
  #puts chain.inspect
  chain.size
end
start_time = Time.now
puts longest_collatz_sequence(999999)
puts "#{Time.now - start_time} seconds."
