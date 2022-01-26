things = [4, true, 'Hello', 10.99, 6, 9]
#array can have different data types and multiple values.

p things.count
p things[0]
p things.fetch(1)
p things[2, 5]
p things[2...5]
p things.values_at(4)
p things.push(20, 82)

popped_item = things.pop
p popped_item
# .pop method removes from end of array. .shift and .unshift acts on the beginning of an array

# not putting here but the .length, .size and .count methods can be used
# .empty?, .nil?, .first, .last methods can also be used

names = %w[Jack Jill John James]
puts names

# %w is used for an array of strings.

p Array.new(3, [1, 2, 3])

p [1, 2, 3, 4, 2, 3, 5].count(2)

letters_range = 'A'..'T'
letters_array = letters_range.to_a
p letters_array

p 1.class
puts 1.is_a?(Array)

