# Problem
# input = user input
# output = launch school is the best repeated some number of times

# loop
loop do
  puts ">> How many output lines do you want? Enter a number >= 3 (Q to quit):"
  input = gets.chomp
  break if input.casecmp?("Q")
  number = input.to_i
  if number >= 3
    number.times { puts "Launch School is the best!" }
  else
    puts ">> That's not enough lines."
  end
end
