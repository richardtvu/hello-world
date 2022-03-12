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

