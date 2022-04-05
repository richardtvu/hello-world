choice = nil
loop do
  puts ">> Do you want me to print something? (y/n)"
  choice = gets.chomp.downcase
  if %w(y n).include?(choice)
    break
  end
  puts ">> Invalid input! Please enter y or n"
end
puts "something" if choice == "y"
