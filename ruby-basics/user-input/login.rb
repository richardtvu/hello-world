USERNAME = "admin"
PASSWORD = "SecreT"
attempt = nil
loop do
  puts ">> Please enter username:"
  name = gets.chomp
  puts ">> Please enter your password:"
  attempt = gets.chomp
  break if attempt == PASSWORD && name == USERNAME
  puts ">> Authorization failed!"
end
puts "Welcome!"
