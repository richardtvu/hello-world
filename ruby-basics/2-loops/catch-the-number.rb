=begin
Catch the Number

The problem ask us to stop the loop if the number is equal to or between 0 and 10. However, the problem didn't specify where exactly to stop the loop.

Do we want to still print the number before we stop the loop or stopped loop before we print the number? Since there isn't somebody to ask for clarification, I will pretend that the problem also want us to print the number before we stop the loop.
=end

loop do
  number = rand(100)
  puts number
  # Initial attempt: break if number >= 0 && number <= 10
  # Alternative solution: break if (0..10).include? number
  # Favorite solution because this reads most like English for me:
  break if number.between?(0, 10)
end
