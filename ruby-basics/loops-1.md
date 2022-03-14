# Loops 1

https://launchschool.com/exercise_sets/2ce91ec4

## Runaway Loop

```ruby
loop do
  puts 'Just keep printing...'
  break # without this break, the loop will keep looping infinitely.
end
```

## Loopception 

```ruby
loop do
  puts 'This is the outer loop.'
  loop do
    puts 'This is the inner loop.'
    break
  end
  break
end

puts 'This is outside all loops.'

```

## Control the Loop

```ruby
iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  break if iterations == 5
  iterations += 1
end
```

We would like to stop the loop when the number of iterations is 5. Increments the number of iterations by one for each iteration. 

## Loop on Command

```ruby
loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
  break if answer.downcase == 'yes'
end
```

## Say Hello

```ruby
say_hello = true
iterations = 0
while say_hello
  puts 'Hello!'
  iterations += 1
  if iterations == 5 then say_hello = false end
end
```

## Print While

Using a while loop, print 5 random numbers between 0 and 99. 

I don't know how to generate random numbers, so this is where the Ruby documents comes into play. My suspicion is I'd be able to find a random number method in the integer class. However, there actually is a `Random` class, with a method called [`rand`](https://ruby-doc.org/core-2.7.5/Random.html#method-c-rand). 

The method accepts a maximum number. This method will generate some random number between 0 and a maximum number, but does not include the maximum integer. Therefore, I would want to pass in 100 if I want to generate a number between and including 0 and 99: `rand(100)`.


 
```ruby
numbers = []

while numbers.length<5
  # ...
  numbers.push(rand(100))
end

numbers.each {| number | puts number}
```

## Count Up

```rb

count = 0
until count > 10
  puts count
  count += 1
end

```

## print-until.rb

Here is a beautiful solution that I love because of the novelty and the beauty. Credit goes to Nghia N (https://github.com/nghian95):

```rb
numbers = %w(7 9 13 25 18)
until numbers.size == 0
  puts numbers.shift
end
```

Today, I learned that size is an alias for length. An alias is another name for this same method.

I also learned that the shift method will get the first element remove it from the array and then return the element. Therefore, the puts numbers.shift will take remove the first element of the array and pass the element to the puts method to print on each iteration.

He gets my follow! I'm excited to see more solutions from Nghia. 

## Greet Your Friends

Today, I learned about the syntax for a for-loop to iterate through an array: 

```rb
for value in object do
  puts value
end
```

e.g. 

```rb

groupies = ["Yaz", "Bau", "Tym"]
for friend in groupies
  puts "Hello, #{friend}!"
end
```