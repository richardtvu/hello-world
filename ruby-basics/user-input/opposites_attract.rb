def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

refactor_this_method_into_two_methods
# a = ""
# b = ""

# loop do
#   puts ">> Please enter a positive or negative integer:"
#   a = gets.chomp
#   puts ">> Please enter a positive or negative integer:"
#   b = gets.chomp
#   if !valid_number?(a) || !valid_number?(b)
#     puts ">> Invalid input. Only non-zero integers are allowed."
#   end
#   a = a.to_i
#   b = b.to_i
#   break if (a * b).negative?
#   puts ">> Sorry. One integer must be positive, one must be negative."
#   puts "Please start over."
# end
# puts "#{a} + #{b} = #{a + b}"
