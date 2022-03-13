# Variable Scope Exercises

https://launchschool.com/exercise_sets/ece1c62b


## What's My Value? (Part 1-5)

```rb
a = 7

def my_value(b)
  b += 10
end

my_value(a)
puts a
```

Methods have their own scope, so the `puts a` will print 7.

```rb
a = 7

def my_value(a)
  a += 10
end

my_value(a)
puts a
```

Based on what the last solution sad, I thought that the reassignment will not change the actual value referenced by `a`, so the answer will still be 7. It turns out that this time the value of a is unchanged because the method has its own scope and thus cannot affect the value of a outside of the method. 

... And more... 

```rb
a = 7

def my_value(b)
  a = b
end

my_value(a + 5)
puts a
```

The value will still be 7. Passing in `a+5` is passing in a reference to the sum of `a+5`, but it's not change the value of a. And like the last problem, we are in the method, which has own scope and so the value of a will not change.

```rb
a = "Xyzzy"

def my_value(b)
  b[2] = '-'
end

my_value(a)
puts a
```

Initial Attempt: I would expect that strings are immutable so the puts would print "Xyzzy". 

Solution: It turns out that the ` b[2] = '-'` does modify the value of referenced by `a`. Why?

The `b[2] =` is a reassignment, so it would correspond to instance method, `[]=` in the [Ruby docs](https://ruby-doc.org/core-2.7.5/String.html#method-i-5B-5D). Based on the documentation, the character at the second index would be replaced with `-`. The variables A and B both have a pointer to the same string object. The solution says that strings are changeable, so thus why when we change the value of the string object reference to by b, we're also able to see the change when we reference a. 

```rb
a = "Xyzzy"

def my_value(b)
  b = 'yzzyX'
end

my_value(a)
puts a
```

I think that the `b = 'yzzyX'` would first create a new string object with the value of `'yzzyX'` and then store a reference to this string object in `b`. Consequently, or the value of `a` would still be `"Xyzzy"`. Therefore, the code will print `Xyzzy`. 

The solution says that assignment always makes a new object and store the reference to the object in the variable. 

## What's My Value? (Part 6-10)

```rb
a = 7

def my_value(b)
  b = a + a
end

my_value(a)
puts a
```

Attempt: I believe that the code will print 7 because reassignment would simply point variable b to a new integer instead of changing the value that variable a is pointing to. Furthermore, this re-assignment is happening in method scope so variable a would not be effective anyways.

Solution: The code will actually print out an error.

Why? The variable a is not accessible within the method my_value has its own scope.

```rb
a = 7
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a

```

I initially thought that blocks would have their own inner scope, so that the block could access variable a, but would not be able to change the value of a in the outer scope. So my initial answer was 7.

However, I've learned that blocks can access and also modify the references are variables initialized outside of blocks. **Thus the solution is 3.**

This finding raised doubts for me and I was unsure of whether blocks do have their inner scope. What I did initialize a variable within the block and then see if I can print the variable. 

```rb
array.each do |element|
  a = element
  b = element
end

puts a
puts b
```

The `puts b` will raise an error that the local variable was not defined. Therefore, I think that blocks have your inner scope and can access variables and modify variables in their outside scope. However, the outside scope can not access the variable defined within the block itself.


```ruby
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a

```
The `array.each` is initializing a variable `a` abd assigning the current element for each iteration. However, we have established that blocks have an inner scope that is inaccessible from the outer scope. Therefore the `puts a` cannot access the value of `a`. Consequently, the program will raise an error that variable `a` was undefined.

```ruby
a = 7
array = [1, 2, 3]

array.each do |a|
  a += 1
end

puts a
```


The program will print 7.

Why?

The solution says that the block argument, `a`, is **shadowing** the outer `a`, i.e. preventing the block from being able to access the `a` defined in the outer scope. 

When we use the `| |` to pass in an argument, I think the block is initializing a new local variable, `a`. Thus, the variable `a` in the `.each` block is not the same variable as the `a` declared in the outer scope. Therefore, the loop will not affect the variable `a` declared in the outer scope.


```ruby
a = 7
array = [1, 2, 3]

def my_value(ary)
  ary.each do |b|
    a += b
  end
end

my_value(array)
puts a

```

The program will raise an error because `a` has neither been passed into the method `my_value` nor has `my_value` declared a local variable `a`. Since methods have their own scope, `ary.each` cannot see `a`. 