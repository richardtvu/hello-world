# Variable Scope Exercises

https://launchschool.com/exercise_sets/ece1c62b

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

I would expect that strings are immutable so the puts would print "Xyzzy". BUT that's not the case. 

https://ruby-doc.org/core-2.7.5/String.html#method-i-5B-5D