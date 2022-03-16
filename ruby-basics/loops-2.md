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