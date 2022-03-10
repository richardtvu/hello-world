# Reading Documentation 2

https://launchschool.com/exercise_sets/93cb1222

## Methods Without Arguments

How would you use the upcase method to uppercase the string "xyz"?

- Search for the `upcase` method in the core Ruby documentation and go to the [String class](https://ruby-doc.org/core-2.7.5/String.html#method-i-upcase).
- Note that the example has `"hEllO".upcase   #=> "HELLO"`. 
- Therefore, I would simply put a dot upcase after the string I want to uppercase. 
- `result="xyz".upcase`

## Required Arguments

How do you use the insert method to insert numbers 5, 6, 7 between the elements c and d in this array: `a = %w(a b c d e)`

1. Search for the insert method in the core Ruby documentation.
2. Go to the a [Array class](https://ruby-doc.org/core-2.7.5/Array.html#method-i-insert) because we're dealing with an array.
3. Note that the message signature is: `insert(index, obj...) → ary`. Therefore the insert method will take an index as well as an object and return the array.
4. The insert method will insert 0 or more objects before the index. Therefore, I want to find out the index of letter d, 3.
5. Now, I will call the insert method: `a.insert(3, 5, 6, 7)`.