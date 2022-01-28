# Symbol

symbols represent the unique objects. there may be1 symbol@any given time,whereas the string may have different objects with the same object identification number.

Symbols are not equal to strings.
Symbols start with the `:` for instance,`:system`.


How do you convert strings into symbols?

```rb
symbols=[]
strings.each do |s|
  symbols.push(s.to_sym) # you can also use .intern in place of .to_sym
end
puts symbols
```

How do you create a hash with symbols using the **hash rocket symbol**?

The hash rocket symbol is `=>`.

```rb
movies = {
  :matrix => "One of the favorite movies I had growing up",
  :harry_met_sally => "One of the movies that a promising date recommended to me."
}
```

How do you create an hash with symbols using the latest hash syntax in Ruby 1.9?

```rb
movies = {
  matrix: "One of the favorite movies I had growing up",
  harry_met_sally: "One of the movies that a promising date recommended to me."
}
```

How do I create a hash of the subset are movies whose ratings are greater than 3?

```rb

good_movies = movie_ratings.select { | movie, rating | rating > 3 }
```

How do I print out the movie titles using just the puts command?

```rb
movie_ratings.each {|movie,rating| puts movie}

movie_ratings.each_key {|k| print k," "}

```