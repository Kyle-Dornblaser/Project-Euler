def special_pythagorean_triplet
  special_sum = 1000
  # need to leave room for at least 1 + 1 + (special_sum - 2)
  combinations = []
  for i in 1...special_sum -1 do
    for j in 1...special_sum -1 do
      combinations << [i, j, special_sum - i - j].sort if special_sum - i - j > 0
    end
  end
  unique_combinations = combinations.uniq
  triplet_index = -1
  unique_combinations.each.with_index do |combo, index|
    if combo[0] ** 2 + combo[1] ** 2 === combo[2] ** 2
      triplet_index = index
    end
  end
  unique_combinations[triplet_index]
end

# Product of triplet
start_time = Time.now
puts special_pythagorean_triplet.reduce(:*)
puts "#{Time.now - start_time} seconds."
