# Reading Documentation 2

https://launchschool.com/exercise_sets/93cb1222

## Methods Without Arguments

How would you use the upcase method to uppercase the string \"xyz"?

- Search for the `upcase` method in the core Ruby documentation and go to the [String class"(https://ruby-doc.org/core-2.7.5/String.html#method-i-upcase).
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

## Optional Arguments

What will each of the `puts` statements print?

```rb
s = 'abc def ghi,jkl mno pqr,stu vwx yz'
puts s.split.inspect #1 
puts s.split(',').inspect #2 
puts s.split(',', 2).inspect #3
```

1. I read `s.split.inspect` as call this split method on s and then call the inspect method on the output of `s.split`. 
2. Go to my version of Ruby documentation: https://ruby-doc.org/core-2.7.5/
3. Search for the `inspect` method for strings.
4. The inspect method will return the results of `s.split` surrounded by quotes and with the special characters escaped.
5. Search for the #split to get to the `split` method more easily.

### 1. `puts s.split.inspect`

1. The `split` method will accept a pattern to split on and return an array. When we don't pass anything in for the pattern, then we will just split on a whitespace.
2. Therefore, `s.split` will produce an array of `["abc", "def", "ghi,jkl", "mno", "pqr,stu", "vwx", "yz"]`.
3. `s.split.inspect` will wrap the array in quotes and then the escape the special characters: `"\[\"abc\", \"def\", \"ghi,jkl\", \"mno\", \"pqr,stu\", \"vwx\", \"yz\"\]"
4. Finally, the `puts` method will print the string without the characters an without the surrounding quotes: `["abc", "def", "ghi,jkl", "mno", "pqr,stu", "vwx", "yz"]`.

### 2. `puts s.split(',').inspect`

1. We will split on the comma which would produce an array of `["abc def ghi","jkl mno pqr","stu vwx yz"]`
2. The `inspect` will again wrap the array in quotes and also the special characters: `"\[\"abc def ghi\",\"jkl mno pqr\",\"stu vwx yz\"\]"`
3. `puts` will then un-escape the backslashes and print the array without quotes: `["abc def ghi","jkl mno pqr","stu vwx yz"]`


### 3. `puts s.split(',', 2).inspect`

1. The 2 is the is the limit, i.e. the split method will return a maximum of two elements in an array.
2. Therefore, the output will be `["abc def ghi","jkl mno pqr,stu vwx yz"]`