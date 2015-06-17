# 0 - Sunday
# 1 - Monday
# 2 - Tuesday
# 3 - Wednesday
# 4 - Thursday
# 5 - Friday
# 6 - Saturday


def sunday_count
  month_days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
  start_year = 1901
  end_year = 2000
  day = 2
  sunday_first_count = 0

  for year in start_year..end_year do
      month_days.each do |days|
        days = 29 if days === 28 && year % 4 === 0
        day += days
        sunday_first_count += 1 if (day + 1) % 7 === 0
      end
  end
  sunday_first_count
end
start_time = Time.now
puts sunday_count
puts "#{Time.now - start_time} seconds."
