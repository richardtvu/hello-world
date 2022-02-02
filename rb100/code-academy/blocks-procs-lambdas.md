# Blocks, Procs, and Lambdas

THIS: the purpose of this entry is for taking notes and brainstorming code for the exercises. 

```rb 
numbers_arrays=[1,2,3,4,5,6,7,8,9,10]

strings_array=numbers_array.map(&:to_s)
```

```rb
symbolize=lambda{|string| string.to_sym }
```

```rb

def batman_ironman_proc
  victor = Proc.new { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end
# The procedure will go into the return statements for batman will win. Therefore, this proc will print out that batman wins.
puts batman_ironman_proc

puts "--"

def batman_ironman_lambda
  victor = lambda { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end
# the lambda returns to the batman method,so ironman||when will be printed because it is the last output 
puts batman_ironman_lambda
```

How do you check if in object is a symbol?
```rb
my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]


# Add your code below!

symbol_filter=lambda{|object| object.is_a? Symbol}

symbols = my_array.select(&symbol_filter)
put symbols
 
```


```rb

odds_n_ends = [:weezard, 42, "Trady Blix", 3, true, 19, 12.345]

ints=odds_n_ends.select { |element| element.is_a? Integer }
puts ints
```

```rb

ages = [23, 101, 7, 104, 11, 94, 100, 121, 101, 70, 44]

# Add your code below!

under_100 = Proc.new { | number | number < 100 }

youngsters = ages.select(&under_100)
puts youngsters
```


```rb

crew = {
  captain: "Picard",
  first_officer: "Riker",
  lt_cdr: "Data",
  lt: "Worf",
  ensign: "Ro",
  counselor: "Troi",
  chief_engineer: "LaForge",
  doctor: "Crusher"
}

first_half = lambda{| role, person | person < "M"}
a_to_m = crew.select(&first_half)
puts a_to_m
```


```rb

```