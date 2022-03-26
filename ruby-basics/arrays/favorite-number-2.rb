favorites = [["Dave", 7], ["Miranda", 3], ["Jason", 11]]
flattened = Array.new
favorites.each do |sub_array|
  sub_array.each { |v| flattened.push(v) }
end
p flattened
