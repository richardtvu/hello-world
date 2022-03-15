# Even or Odd?
count = 1
loop do
  # if count is odd, then print "count is odd!"
  if count.odd? then puts "#{count} is odd!" else puts "#{count} is even!" end
  count += 1
  break if count > 5
end
