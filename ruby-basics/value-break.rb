def break_value
  a = 0

  while true
    p a
    a += 1

    if a < 10 then break a end
  end
end

p break_value # returns 1. This example shows that break will return the value of the expression after, "a"
