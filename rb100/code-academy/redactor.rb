# https://www.codecademy.com/courses/learn-ruby/lessons/redacted/exercises/great-work-1

# Redactor 

puts "Input some text: "
text = gets.chomp

redact_words=gets.chomp

words=text.split(" ")
words.each do |word|
  redact_words.each do |redacted|
    if word.downcase==redact.downcase
      print "REDACTED "
    end
    print word +" "
end