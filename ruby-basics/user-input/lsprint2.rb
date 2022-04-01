def print_affirmations
  number_of_lines = nil
  loop do
    puts "How many output lines do you want? Enter a number >= 3 (Q to quit):"
    response = gets.chomp
    return if (response.casecmp?("q"))
    number_of_lines = response.to_i
    break if number_of_lines >= 3
    puts ">> That's not enough lines."
  end

  while number_of_lines > 0
    puts "Launch School is the best!"
    number_of_lines -= 1
  end
end

print_affirmations
