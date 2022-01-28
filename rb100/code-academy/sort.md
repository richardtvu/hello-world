# sort

The `.sort!` when applied to strings will order these strings in ascending order. For instance, `["Peter","John"].sort!` will output `["John", "Peter"]`.

However, these sort method does not have a built-in way for organizing objects in reverse order.

One way to build on that is to define a method that accepts a boolean and then insert  appropriate parameters to use sort to organize in reverse alphabetical order. 

```rb
def alphabetize(arr, rev=false)
  if rev
    arr.sort { |item1, item2| item2 <=> item1 }
  else
    arr.sort { |item1, item2| item1 <=> item2 }
  end
end
```

I think this method is taking in an array and a boolean called rev. When rev is true, the method will sort the items in the array in descending order from the greatest to the least. When rev is false, the method will sort the array from lease to greatest in ascending order.

What is happening in back `arr.sort {|x,y| x <=> y}`?

I think that for each of the items x,y in the array, `arr`, sort the array such that x comes before y. However, I would like to brush up on the meaning of the comparator operator.


What is the Ruby combined comparison operator? https://www.codecademy.com/learn/learn-ruby/modules/learn-ruby-blocks-and-sorting-u/cheatsheet

The `<=>`operator will return:  
- 0 when the first object id equal to the second object. e.g. `1<=>1`
- 1 when the first object is greater than the second object. e.g. `2<=>1`
- -1 when the first object is less then the secondary.`6<=>9`

Therefore,I think that  `["Peter","John"].sort! {|x,y| y <= x}` word probably return a -1 when comparing `"Peter" <= "John"` Peter comes later on the off. Because I expect this code to put peter before John, I think that -1 in the sort is saying that the first objects or opera and being compared will be first in the order.

Therefore, when the `<=>` operator aka the spaceship operator returns a zero, sort will do nothing with with regard to the order. When the operator returns a 1 operand will be placed after the second operand and when the spaceship operator returns -1, then the first operand will remain in place or b before this second operand. 

