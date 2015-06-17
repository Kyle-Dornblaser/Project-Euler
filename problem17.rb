def number_letter_counts(n)
  numbers = []
  for i in 1..n do
    numbers << number_to_word(i)
    puts "#{i} \t #{number_to_word(i)}" if i % 100 === 0

  end

  numbers.join('').delete(' ').delete('-').size
end

def number_to_word(n)

  ones = {  1 => 'one',
            2 => 'two',
            3 => 'three',
            4 => 'four',
            5 => 'five',
            6 => 'six',
            7 => 'seven',
            8 => 'eight',
            9 => 'nine' }

  tens = {
    1 => 'ten',
    2 => 'twenty',
    3 => 'thirty',
    4 => 'forty',
    5 => 'fifty',
    6 => 'sixty',
    7 => 'seventy',
    8 => 'eighty',
    9 => 'ninety'
  }

  teens = {
    11 => 'eleven',
    12 => 'twelve',
    13 => 'thirteen',
    14 => 'fourteen',
    15 => 'fifteen',
    16 => 'sixteen',
    17 => 'seventeen',
    18 => 'eighteen',
    19 => 'nineteen'
  }

  word = ''

  thousand = 'one thousand' if n === 1000
  hundred = ones[n/100] + ' hundred' if n >= 100 && n < 1000
  if n > 9
    ten = tens[n/10] if n < 100
    ten = tens[n/10 % 10] if n >= 100
  end

  one = ones[n % 10]

  if n % 100 < 20 && n % 100 > 10
    one = nil
    ten = teens[n % 100]
  end

  word += thousand if thousand
  word += hundred if hundred
  word += ' and ' if hundred && (ten || one)
  word += ten if ten
  word += '-' if ten && one
  word += one if one
  word
end

n = ARGV.first ? ARGV[0].to_i : 1000
start_time = Time.now
puts number_letter_counts(n)
puts "#{Time.now - start_time} seconds."
