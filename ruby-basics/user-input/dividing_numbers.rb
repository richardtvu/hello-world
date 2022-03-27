def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

numerator = ""
loop do
  puts ">> Please enter the numerator:"
  numerator = gets.chomp
  break if valid_number?(numerator)
  puts ">> Invalid input. Only integers are allowed."
end

denominator = ""
until valid_number?(denominator)
  puts ">> Please enter the denominator:"
  denominator = gets.chomp
end

numerator = numerator.to_i
denominator = denominator.to_i

puts ">> #{numerator} / #{denominator} is #{numerator / denominator}"
