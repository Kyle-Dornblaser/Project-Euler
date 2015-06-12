def smallest_multiple(min, max)
  multiple = min
  for i in min..max do
    multiple = multiple.lcm(i)
  end
  multiple
end

min, max = ARGV[1] ? ARGV[0..1].map {|v| v.to_i } : [1,10]
puts smallest_multiple(min, max)
