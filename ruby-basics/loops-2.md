# Loops 2 
https://launchschool.com/exercise_sets/7d22644c

## Conditional Loop

### Problem?
- Input: process_the_loop boolean
- Output: string


### Example?

When the process the loop boolean is true, run a loop once that prints "The loop was processed." 

Otherwise, print "The loop wasn't processed!". 

### DS? 

None needed.

### Algorithm?

```
IF process_the_loop is true
  Start looping
    puts "The loop was processed." 
    Stop looping
ELSE
  puts "The loop wasn't processed!"

```

### Code

```ruby
process_the_loop = [true, false].sample

if process_the_loop
  while true
    puts "The loop was processed."
    break
  end
else
  puts "The loop wasn't processed!"
end

```

## Get the Sum


### Problem?
Given a loop that gets user input and attempts to convert the user input into an integer, puts "That's correct!" where the user input=4. Otherwise, print"Wrong answer.Try again!"

Input: User input that has been attempted to be converted into an integer.

Output: a string depending on whether the answer=4 or not.

### Example

- Input: 1; Output: "Wrong answer.Try again!"
- Input: `a`; Output: "Wrong answer.Try again!"
- Input: 4; Output: "That's correct!"

### Algorithm

```
LOOP
  ask user for input
  attempt to convert input into an integer and store reference in answer variable
  if the input is equal to 4
    print "That's correct!"
  else
    Output: "Wrong answer.Try again!"
END
```
    
