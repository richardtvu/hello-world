loop do
  puts ">> Do you want me to print something? (y/n)"
  choice = gets.chomp.downcase
  puts "something" if choice == "y"
  break if %w(y n).include?(choice)
  puts ">> Invalid input! Please enter y or n"
end
