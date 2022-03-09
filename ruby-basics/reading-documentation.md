# Reading Documentation

Where can you find the most complete Ruby documentation?
- https://docs.ruby-lang.org/en/master/index.html
- https://ruby-doc.org/
- https://rubyapi.org/2.7

Where can you find the while loop documentation?
- In the core API documentation, specifically under the [control expressions](https://ruby-doc.org/core-2.7.1/doc/syntax/control_expressions_rdoc.html#:~:text=in%20the%20expression.-,while%20Loop%C2%B6%20%E2%86%91,-The%20while%20loophttps://ruby-doc.org/core-2.7.1/doc/syntax/control_expressions_rdoc.html).

What does the control expressions page contain?
- Documentation on conditional, loops, and how to control the loops.

What is the return value of a while loop?
- The [control expressions](https://ruby-doc.org/core-2.7.1/doc/syntax/control_expressions_rdoc.html#:~:text=in%20the%20expression.-,while%20Loop%C2%B6%20%E2%86%91,-The%20while%20loophttps://ruby-doc.org/core-2.7.1/doc/syntax/control_expressions_rdoc.html) documentation says that a while loop generally returns a `nil` value. An exception to this rule is when you use a `break`. 

What is the return value of `break` in a `while` loop? 
- You can find the [break statement](https://ruby-doc.org/core-2.7.1/doc/syntax/control_expressions_rdoc.html#:~:text=exception%20handling%20overhead.-,break%20Statement%C2%B6%20%E2%86%91,-Use%20break%20to) documentation under the control expressions.
- The value of a `break` will be the value of the expression after the `break`, e.g. `nil` if no value given.

```rb
def break_value
  a = 0

  while true
    p a
    a += 1

    if a < 10 then break a end
  end
end

p break_value # returns 1. 
```

How can you write large numbers that makes them easier to read? 

- You can go to the [Literals section](https://ruby-doc.org/core-2.5.1/doc/syntax/literals_rdoc.html#:~:text=forms%20are%20preferred.)-,Numbers%C2%B6%20%E2%86%91,-You%20can%20write) of the ruby documentation.
- You can place the underscore at any spot in the number.