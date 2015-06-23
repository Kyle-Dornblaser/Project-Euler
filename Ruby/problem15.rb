def lattice_paths(length, width)
  (1..length+width).to_a.combination(length).size
end

l, w = ARGV[1] ? [ARGV[0].to_i, ARGV[1].to_i] : [20, 20]
start_time = Time.now
puts lattice_paths(l, w)
puts "#{Time.now - start_time} seconds."
